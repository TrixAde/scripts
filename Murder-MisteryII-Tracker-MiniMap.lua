local Janitor; do -- Janitor
    local IndicesReference = newproxy(true)
    getmetatable(IndicesReference).__tostring = function()
        return "IndicesReference"
    end

    local LinkToInstanceIndex = newproxy(true)
    getmetatable(LinkToInstanceIndex).__tostring = function()
        return "LinkToInstanceIndex"
    end

    local METHOD_NOT_FOUND_ERROR = "Object %s doesn't have method %s, are you sure you want to add it? Traceback: %s"

    local janitor = {
        ClassName = "Janitor";
        __index = {
            CurrentlyCleaning = true;
            [IndicesReference] = nil;
        };
    }

    local TypeDefaults = {
        ["function"] = true;
        RBXScriptConnection = "Disconnect";
    }

    function janitor.new()
        return setmetatable({
            CurrentlyCleaning = false;
            [IndicesReference] = nil;
        }, janitor)
    end

    function janitor.Is(Object)
        return type(Object) == "table" and getmetatable(Object) == janitor
    end

    function janitor.__index:Add(Object, MethodName, Index)
        if Index then
            self:Remove(Index)

            local This = self[IndicesReference]
            if not This then
                This = {}
                self[IndicesReference] = This
            end

            This[Index] = Object
        end

        MethodName = MethodName or TypeDefaults[typeof(Object)] or "Destroy"
        if type(Object) ~= "function" and not Object[MethodName] then
            warn(string.format(METHOD_NOT_FOUND_ERROR, tostring(Object), tostring(MethodName), debug.traceback(nil, 2)))
        end

        self[Object] = MethodName
        return Object
    end

    function janitor.__index:Remove(Index)
        local This = self[IndicesReference]

        if This then
            local Object = This[Index]

            if Object then
                local MethodName = self[Object]

                if MethodName then
                    if MethodName == true then
                        Object()
                    else
                        local ObjectMethod = Object[MethodName]
                        if ObjectMethod then
                            ObjectMethod(Object)
                        end
                    end

                    self[Object] = nil
                end

                This[Index] = nil
            end
        end

        return self
    end

    function janitor.__index:Get(Index)
        local This = self[IndicesReference]
        if This then
            return This[Index]
        else
            return nil
        end
    end

    function janitor.__index:Cleanup()
        if not self.CurrentlyCleaning then
            self.CurrentlyCleaning = nil
            for Object, MethodName in next, self do
                if Object == IndicesReference then
                    continue
                end

                if MethodName == true then
                    Object()
                else
                    local ObjectMethod = Object[MethodName]
                    if ObjectMethod then
                        ObjectMethod(Object)
                    end
                end

                self[Object] = nil
            end

            local This = self[IndicesReference]
            if This then
                for Index in next, This do
                    This[Index] = nil
                end

                self[IndicesReference] = {}
            end

            self.CurrentlyCleaning = false
        end
    end

    function janitor.__index:Destroy()
        self:Cleanup()
        table.clear(self)
        setmetatable(self, nil)
    end

    janitor.__call = janitor.__index.Cleanup

    local Disconnect = {Connected = true}
    Disconnect.__index = Disconnect
    function Disconnect:Disconnect()
        if self.Connected then
            self.Connected = false
            self.Connection:Disconnect()
        end
    end

    function Disconnect:__tostring()
        return "Disconnect<" .. tostring(self.Connected) .. ">"
    end

    function janitor.__index:LinkToInstance(Object, AllowMultiple)
        local Connection
        local IndexToUse = AllowMultiple and newproxy(false) or LinkToInstanceIndex
        local IsNilParented = Object.Parent == nil
        local ManualDisconnect = setmetatable({}, Disconnect)

        local function ChangedFunction(_DoNotUse, NewParent)
            if ManualDisconnect.Connected then
                _DoNotUse = nil
                IsNilParented = NewParent == nil

                if IsNilParented then
                    task.defer(function()
                        if not ManualDisconnect.Connected then
                            return
                        elseif not Connection.Connected then
                            self:Cleanup()
                        else
                            while IsNilParented and Connection.Connected and ManualDisconnect.Connected do
                                task.wait()
                            end

                            if ManualDisconnect.Connected and IsNilParented then
                                self:Cleanup()
                            end
                        end
                    end)
                end
            end
        end

        Connection = Object.AncestryChanged:Connect(ChangedFunction)
        ManualDisconnect.Connection = Connection

        if IsNilParented then
            ChangedFunction(nil, Object.Parent)
        end

        Object = nil
        return self:Add(ManualDisconnect, "Disconnect", IndexToUse)
    end

    function janitor.__index:LinkToInstances(...)
        local ManualCleanup = Janitor.new()
        for _, Object in ipairs({...}) do
            ManualCleanup:Add(self:LinkToInstance(Object, true), "Disconnect")
        end

        return ManualCleanup
    end

    Janitor = janitor
end

local DrawingESP; do
    -- Constants:
    local workspace = workspace
    local RunService = game:GetService("RunService")

    local Camera = workspace.CurrentCamera

    -- Cache:
    local RunningESPs = {}
    local WorldToViewportPoint = Camera.WorldToViewportPoint
    local IsDescendantOf = game.IsDescendantOf
    local NewCFrame, NewVector2, NewVector3 = CFrame.new, Vector2.new, Vector3.new

    -- Functions:
    local function NewText(Color, Text)
        local Label = Drawing.new("Text")
        Label.Text = Text
        Label.Center = true
        Label.Visible = false
        Label.Position = NewVector2(0, 0)
        Label.Color = Color
        Label.Transparency = 1
        return Label
    end

    local function NewLine(Color, Thickness)
        local Line = Drawing.new("Line")
        Line.Visible = false
        Line.From = NewVector2(0, 0)
        Line.To = NewVector2(0, 0)
        Line.Color = Color
        Line.Thickness = Thickness
        Line.Transparency = 1
        return Line
    end

    local function ApplyProperties(Array, Properties)
        for i,v in pairs(Array) do
            for x,y in pairs(Properties) do
                v[x] = y
            end
        end
    end

    -- Module:
    local Module = {}
    Module.RunningESPs = RunningESPs
    Module.__index = Module

    function Module.new(Character: Model, Text: string, Color: Color3)
        if RunningESPs[Character] then return RunningESPs[Character] end
        Text = Text or ""
        Color = Color or Color3.fromRGB(255, 255, 255)

        local _Janitor = Janitor.new();
        local self = setmetatable({
            Visible = true;
            Text = Text;
            Color3 = Color;
            _Character = Character;
            _Humanoid = Character:FindFirstChildWhichIsA("Humanoid") or Character:WaitForChild("Humanoid");
            _HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart") or Character.PrimaryPart;
            _Label = _Janitor:Add(NewText(Color, Text), "Remove"),
            _Library = {
                TL1 = _Janitor:Add(NewLine(Color, 2), "Remove"),
                TL2 = _Janitor:Add(NewLine(Color, 2), "Remove"),
        
                TR1 = _Janitor:Add(NewLine(Color, 2), "Remove"),
                TR2 = _Janitor:Add(NewLine(Color, 2), "Remove"),
        
                BL1 = _Janitor:Add(NewLine(Color, 2), "Remove"),
                BL2 = _Janitor:Add(NewLine(Color, 2), "Remove"),
        
                BR1 = _Janitor:Add(NewLine(Color, 2), "Remove"),
                BR2 = _Janitor:Add(NewLine(Color, 2), "Remove")
            };

            _Janitor = _Janitor;
        }, Module)

        local Library = self._Library
        task.defer(function()
            local TXT = self._Label
            local TL1 = Library.TL1
            local TL2 = Library.TL2
        
            local TR1 = Library.TR1
            local TR2 = Library.TR2
        
            local BL1 = Library.BL1
            local BL2 = Library.BL2
        
            local BR1 = Library.BR1
            local BR2 = Library.BR2

            _Janitor:Add(RunService.RenderStepped:Connect(function()
                if IsDescendantOf(Character, workspace) and self._Humanoid.Health > 0 then
                    local ViewportPoint, OnScreen = WorldToViewportPoint(Camera, self._HumanoidRootPart.Position)
                    if OnScreen and ViewportPoint.Z < 500 then
                        local Position = NewCFrame(self._HumanoidRootPart.CFrame.Position, self._HumanoidRootPart.CFrame.Position + -Camera.CFrame.LookVector.Unit)
                        local Size = NewVector3(self._HumanoidRootPart.Size.X, self._HumanoidRootPart.Size.Y * 1.5, self._HumanoidRootPart.Size.Z)
                        local SizeX = Size.X
                        local SizeY = Size.Y
                        local TP = WorldToViewportPoint(Camera, (Position * NewCFrame(0, SizeY * 1.5, 0)).Position)
                        local TL = WorldToViewportPoint(Camera, (Position * NewCFrame(SizeX, SizeY, 0)).Position)
                        local TR = WorldToViewportPoint(Camera, (Position * NewCFrame(-SizeX, SizeY, 0)).Position)
                        local BL = WorldToViewportPoint(Camera, (Position * NewCFrame(SizeX, -SizeY, 0)).Position)
                        local BR = WorldToViewportPoint(Camera, (Position * NewCFrame(-SizeX, -SizeY, 0)).Position)

                        local Magnitude = (Camera.CFrame.Position - self._HumanoidRootPart.Position).Magnitude
                        local offset = math.clamp(750 / Magnitude, 2, 300)

                        TXT.Text = self.Text
                        TXT.Position = NewVector2(TP.X, TP.Y)
                        TXT.Size = 500 / ViewportPoint.Z
                        TXT.Visible = self.Visible

                        TL1.From = NewVector2(TL.X, TL.Y)
                        TL1.To = NewVector2(TL.X + offset, TL.Y)
                        TL2.From = NewVector2(TL.X, TL.Y)
                        TL2.To = NewVector2(TL.X, TL.Y + offset)

                        TR1.From = NewVector2(TR.X, TR.Y)
                        TR1.To = NewVector2(TR.X - offset, TR.Y)
                        TR2.From = NewVector2(TR.X, TR.Y)
                        TR2.To = NewVector2(TR.X, TR.Y + offset)

                        BL1.From = NewVector2(BL.X, BL.Y)
                        BL1.To = NewVector2(BL.X + offset, BL.Y)
                        BL2.From = NewVector2(BL.X, BL.Y)
                        BL2.To = NewVector2(BL.X, BL.Y - offset)

                        BR1.From = NewVector2(BR.X, BR.Y)
                        BR1.To = NewVector2(BR.X - offset, BR.Y)
                        BR2.From = NewVector2(BR.X, BR.Y)
                        BR2.To = NewVector2(BR.X, BR.Y - offset)

                        local Thickness = math.clamp(100 / Magnitude, 1, 4)
                        ApplyProperties(Library, {Visible = self.Visible, Thickness = Thickness}) --0.1 is min thickness, 6 is max
                    else
                        ApplyProperties(Library, {Visible = false})
                        TXT.Visible = false
                    end
                else
                    ApplyProperties(Library, {Visible = false})
                    TXT.Visible = false
                end
            end))
        end)

        _Janitor:LinkToInstance(Character)
        RunningESPs[Character] = self
        return self
    end

    function Module:ChangeColor(Value)
        assert(typeof(Value) == "Color3", string.format("Invalid argument #1: Color3 expected, got %s instead!", typeof(Value)))
        self.Color3 = Value
        ApplyProperties(self._Library, {Color = Value})
        self._Label.Color = Value
    end

    function Module:Destroy()
        RunningESPs[self._Character] = nil
        self._Janitor:Destroy()
    end

    -- Export:
    DrawingESP = Module
end

local DrawingRadar; do
    -- Constants:
    local Players = game:GetService("Players")
    local GuiService = game:GetService("GuiService")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    
    local LocalPlayer = Players.LocalPlayer
    local Camera = workspace.CurrentCamera
    
    -- Cache:
    local IsDescendantOf = game.IsDescendantOf
    local NewVector2, NewVector3, NewCFrame = Vector2.new, Vector3.new, CFrame.new
    
    -- Functions:
    local function NewCircle(Transparency, Color, Radius, Filled, Thickness)
        local Circle = Drawing.new("Circle")
        Circle.Transparency = Transparency
        Circle.Color = Color
        Circle.Visible = false
        Circle.Thickness = Thickness
        Circle.Position = Vector2.new(0, 0)
        Circle.Radius = Radius
        Circle.NumSides = math.clamp(Radius * 55 / 100, 10, 75)
        Circle.Filled = Filled
        return Circle
    end
    
    local function GetRelative(Position)
        local Character = LocalPlayer.Character
        if Character then
            local HumanoidRootPart = Character.PrimaryPart or Character:FindFirstChild("HumanoidRootPart")
            if HumanoidRootPart then
                local c = Camera.CFrame.Position
                local RootPosition = HumanoidRootPart.Position
                local CameraPosition = NewVector3(c.X, RootPosition.Y, c.Z)
                local NewCF = NewCFrame(RootPosition, CameraPosition)
                local ObjectSpace = NewCF:PointToObjectSpace(Position)
                return NewVector2(ObjectSpace.X, ObjectSpace.Z)
            end
        end
        return NewVector2(0, 0)
    end
    
    -- Component:
    local RadarDot = {}
    RadarDot.__index = RadarDot
    
    function RadarDot.new(Radar: Array, Adornee: BasePart, Color: Color3)
        Color = Color or Color3.fromRGB(60, 170, 255)
        local self = setmetatable({
            Color3 = Color;
            _Adornee = Adornee;
            _Dot = NewCircle(1, Color, 3, true, 1);
            _Janitor = Janitor.new();
        }, RadarDot)
        local PlayerDot = self._Janitor:Add(self._Dot, "Remove")
        self._Janitor:Add(RunService.RenderStepped:Connect(function()
            if IsDescendantOf(Adornee, workspace) then
                local Relative = GetRelative(Adornee.Position)
                local NewPosition = Radar.Position - Relative
    
                local Delta = Radar.Position - NewPosition
                local Magnitude = Delta.Magnitude
                if Magnitude < (Radar.Radius - 2) then
                    PlayerDot.Radius = 3
                    PlayerDot.Position = NewPosition
                else
                    local Offset = Delta.Unit * (Magnitude - Radar.Radius)
                    PlayerDot.Radius = 2
                    PlayerDot.Position = NewVector2(NewPosition.X + Offset.X, NewPosition.Y + Offset.Y)
                end
                PlayerDot.Visible = true
            else
                PlayerDot.Visible = false
            end
        end))
    
        Radar._Janitor:Add(self._Janitor)
        self._Janitor:LinkToInstance(Adornee)
    
        return self
    end
    
    function RadarDot:ChangeColor(Value)
        assert(typeof(Value) == "Color3", string.format("Invalid argument #1: Color3 expected, got %s instead!", typeof(Value)))
        self.Color3 = Value
        self._Dot.Color = Value
    end
    
    function RadarDot:Destroy()
        self._Janitor:Destroy()
    end
    
    -- Module:
    local Module = {
        CurrentDots = {}
    }
    Module.__index = Module
    
    function Module.new(Position: Vector2, Radius: number)
        local self = setmetatable({
            Position = Position or NewVector2(200, 200);
            Radius = Radius or 100;
            _Library = {};
            _Janitor = Janitor.new()
        }, Module)
    
        -- Radar:
        local RadarBackground = self._Janitor:Add(NewCircle(0.9, Color3.fromRGB(10, 10, 10), self.Radius, true, 1), "Remove")
        local RadarBorder = self._Janitor:Add(NewCircle(0.75, Color3.fromRGB(75, 75, 75), self.Radius, false, 3), "Remove")
        RadarBackground.Position = self.Position
        RadarBorder.Position = self.Position
        RadarBorder.Visible = true
        RadarBackground.Visible = true
    
        -- Origin:
        local Origin = Drawing.new("Triangle")
        Origin.Visible = true
        Origin.Thickness = 1
        Origin.Filled = true
        Origin.Color = Color3.fromRGB(255, 255, 255)
        Origin.PointA = self.Position + NewVector2(0, -4)
        Origin.PointB = self.Position + NewVector2(-3, 4)
        Origin.PointC = self.Position + NewVector2(3, 4)
    
        -- Draggable:
        task.spawn(function()
            local Inset = GuiService:GetGuiInset()
    
            local Dragging = false
            local Offset = Vector2.new(0, 0)
            UserInputService.InputBegan:Connect(function(Input)
                local MousePosition = Input.Position
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and (Vector2.new(MousePosition.X, MousePosition.Y) - self.Position).Magnitude < self.Radius then
                    Offset = self.Position - NewVector2(Input.Position.X, Input.Position.Y)
                    Dragging = true
                end
            end)
    
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Dragging = false
                end
            end)
    
            local MouseIcon = NewCircle(1, Color3.fromRGB(255, 255, 255), 3, true, 1)
            self._Janitor:Add(RunService.RenderStepped:Connect(function()
                local MouseLocation = UserInputService:GetMouseLocation()
                if (MouseLocation - self.Position).Magnitude < self.Radius then
                    MouseIcon.Position = MouseLocation
                    MouseIcon.Visible = true
                else
                    MouseIcon.Visible = false
                end
                if Dragging then
                    self.Position = Vector2.new(MouseLocation.X, MouseLocation.Y - Inset.Y) + Offset
                    RadarBackground.Position = self.Position
                    RadarBorder.Position = self.Position
                    Origin.PointA = self.Position + NewVector2(0, -4)
                    Origin.PointB = self.Position + NewVector2(-3, 4)
                    Origin.PointC = self.Position + NewVector2(3, 4)
                end
            end))
        end)
    
        return self
    end
    
    function Module:CreateDot(Adornee: BasePart, Color: Color3)
        if Module.CurrentDots[Adornee] then return Module.CurrentDots[Adornee] end
        local NewDot = RadarDot.new(self, Adornee, Color)
        Module.CurrentDots[Adornee] = NewDot
        return NewDot
    end
    
    function Module:FetchDot(Adornee: BasePart)
        return Module.CurrentDots[Adornee]
    end
    
    function Module:Destroy()
        self._Janitor:Destroy()
    end
    
    -- Export:
    DrawingRadar = Module
end

-- Configs:
local Colors = {
    Innocent = Color3.fromRGB(250, 250, 250);
    Murderer = Color3.fromRGB(255, 0, 0);
    Sheriff = Color3.fromRGB(0, 0, 255);
    Hero = Color3.fromRGB(255, 255, 0);
    Unknown = Color3.fromRGB(200, 200, 200)
}

-- Constants:
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer

-- Variables:
local Murderer, Sheriff;

-- Instances:
local MM2Janitor = Janitor.new()
local Radar = DrawingRadar.new()
local ScreenGui = MM2Janitor:Add(Instance.new("ScreenGui", game:GetService("CoreGui")))

-- Functions:
local function UpdateRole(Player, Info)
    if Player then
        -- Role
        local Role = typeof(Info) == "table" and Info.Role or Info
        local RoleColor = Colors.Unknown
        if Role == "Murderer" then
            Murderer = Player
            RoleColor = Colors.Murderer
        elseif Role == "Sheriff" then
            Sheriff = Player
            RoleColor = Colors.Sheriff
        elseif Role == "Hero" then
            Sheriff = Player
            RoleColor = Colors.Hero
        elseif Role == "Innocent" then
            if Murderer == Player then Murderer = nil elseif Sheriff == Player then Sheriff = nil end
            RoleColor = Colors.Innocent
        end

        if Player ~= LocalPlayer then
            local Character = Player.Character or Player.CharacterAdded:Wait()
            if Character and RoleColor then
                DrawingESP.new(Player.Character, Player.Name, RoleColor):ChangeColor(RoleColor)
                Radar:CreateDot(Character:WaitForChild("HumanoidRootPart"), RoleColor):ChangeColor(RoleColor)
            end
        end
    end
end

local function ManualUpdate()
    local Data = ReplicatedStorage.GetPlayerData:InvokeServer()
    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then
            pcall(UpdateRole, v, Data[v.Name])
        end
    end
end

-- Listeners:
MM2Janitor:Add(ReplicatedStorage.Fade.OnClientEvent:Connect(function(Value)
    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then
            pcall(UpdateRole, v, Value[v.Name])
        end
    end
end))
MM2Janitor:Add(ReplicatedStorage.UpdatePlayerData.OnClientEvent:Connect(function(Value)
    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then
            pcall(UpdateRole, v, Value[v.Name])
        end
    end
end))
MM2Janitor:Add(ReplicatedStorage.RoleSelect.OnClientEvent:Connect(function(Role, ...) UpdateRole(LocalPlayer, Role) end))
MM2Janitor:Add(ReplicatedStorage.Remotes.Gameplay.RoundEndFade.OnClientEvent:Connect(function()
    UpdateRole(Murderer, "Innocent"); UpdateRole(Murderer, "Innocent");
end))

MM2Janitor:Add(workspace.ChildAdded:Connect(function(Child)
    if Child.Name == "GunDrop" then
        local BoxJanitor = Janitor.new()
        BoxJanitor:Add(ManualUpdate)
        BoxJanitor:LinkToInstance(Child)

        local Box = BoxJanitor:Add(Instance.new("BoxHandleAdornment"))
        Box.Size = Child.Size + Vector3.new(0.1, 0.1, 0.1)
        Box.Adornee = Child
        Box.Color3 = Colors.Hero
        Box.AlwaysOnTop = true
        Box.ZIndex = 5
        Box.Transparency = 0.5
        Box.Parent = ScreenGui
    end
end))

MM2Janitor:Add(Players.PlayerAdded:Connect(function(Player: Player)
    MM2Janitor:Add(Player.CharacterAdded:Connect(function(Character)
        Character:WaitForChild("Humanoid");
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart");
        MM2Janitor:Add(DrawingESP.new(Character, Player.Name, Colors.Unknown));
        MM2Janitor:Add(Radar:CreateDot(HumanoidRootPart, Colors.Unknown))
    end))
end))

-- Actions:
local Data = ReplicatedStorage.GetPlayerData:InvokeServer()
for i,v in ipairs(Players:GetPlayers()) do
    if v ~= LocalPlayer then
        pcall(UpdateRole, v, Data[v.Name])
        MM2Janitor:Add(v.CharacterAdded:Connect(function(Character)
            Character:WaitForChild("Humanoid");
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart");
            MM2Janitor:Add(DrawingESP.new(Character, v.Name, Colors.Unknown));
            MM2Janitor:Add(Radar:CreateDot(HumanoidRootPart, Colors.Unknown))
        end))
    end
end

-- Exports:
if getgenv().MM2Janitor then getgenv().MM2Janitor:Destroy() end
getgenv().MM2Janitor = MM2Janitor
return {};
