local LibName = "Library"
_G.LibName = LibName

wait()

local VLib = {RainbowColorValue = 0, HueSelectionPosition = 0}
function zigzag(X)
    return math.acos(math.cos(X * math.pi)) / math.pi
end
counter = 0
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()


coroutine.wrap(
    function()
        while wait() do
            counter = counter + 0.002
        end
    end
)()

coroutine.wrap(
    function()
        while wait() do
            VLib.RainbowColorValue = VLib.RainbowColorValue + 1 / 255
            VLib.HueSelectionPosition = VLib.HueSelectionPosition + 1

            if VLib.RainbowColorValue >= 1 then
                VLib.RainbowColorValue = 0
            end

            if VLib.HueSelectionPosition == 80 then
                VLib.HueSelectionPosition = 0
            end
        end
    end
)()

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        object.Position = pos
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local Library = Instance.new("ScreenGui")
Library.Name = LibName
Library.Parent = game.CoreGui
Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local uitoggled = false
UserInputService.InputBegan:Connect(
    function(io, p)
        if io.KeyCode == Enum.KeyCode.RightControl or io.KeyCode == Enum.KeyCode.RightShift then
            if uitoggled == false then
                Library.Enabled = false
                uitoggled = true
            else
                Library.Enabled = true
                uitoggled = false
            end
        end
    end
)

function VLib:Window(text, textgame, circletext)
local FirstTab = false
    local MainFrame = Instance.new("ImageLabel")
    local MainCorner = Instance.new("UICorner")
    local LeftFrame = Instance.new("ImageLabel")
    local LeftFrameCorner = Instance.new("UICorner")
    local MainTitle = Instance.new("TextLabel")
    local Circle = Instance.new("ImageLabel")
    local CircleCorner = Instance.new("UICorner")
    local CircleName = Instance.new("TextLabel")
    local GameTitle = Instance.new("TextLabel")
    local TabHolder = Instance.new("Frame")
    local TabHoldLayout = Instance.new("UIListLayout")
    local RainbowLine = Instance.new("Frame")
    local RainbowLineCorner = Instance.new("UICorner")
    local ContainerHold = Instance.new("Folder")
    local DragFrame = Instance.new("Frame")
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Library
    MainFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
    MainFrame.Position = UDim2.new(0.340104192, 0, 0.297149122, 0)
    MainFrame.Size = UDim2.new(0, 614, 0, 395)
    MainFrame.Image = 'rbxassetid://0'

    MainCorner.CornerRadius = UDim.new(0, 7)
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = MainFrame

    LeftFrame.Name = "LeftFrame"
    LeftFrame.Parent = MainFrame
    LeftFrame.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
    LeftFrame.Position = UDim2.new(-0.000674468291, 0, -0.000149806539, 0)
    LeftFrame.Size = UDim2.new(0, 186, 0, 395)
    LeftFrame.Image = 'rbxassetid://0'

    LeftFrameCorner.CornerRadius = UDim.new(0, 7)
    LeftFrameCorner.Name = "LeftFrameCorner"
    LeftFrameCorner.Parent = LeftFrame

    MainTitle.Name = "MainTitle"
    MainTitle.Parent = LeftFrame
    MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainTitle.BackgroundTransparency = 1.000
    MainTitle.Position = UDim2.new(0.324129045, 0, 0.0512162149, 0)
    MainTitle.Size = UDim2.new(0, 71, 0, 20)
    MainTitle.Font = Enum.Font.Gotham
    MainTitle.Text = text
    MainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    MainTitle.TextSize = 14.000
    MainTitle.TextXAlignment = Enum.TextXAlignment.Left

    Circle.Name = "Circle"
    Circle.Parent = LeftFrame
    Circle.BackgroundColor3 = Color3.fromRGB(118, 106, 255)
    Circle.Position = UDim2.new(0.0834304541, 0, 0.0474189818, 0)
    Circle.Size = UDim2.new(0, 38, 0, 35) --38
    Circle.Image = "https://www.roblox.com/bust-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"

    CircleCorner.CornerRadius = UDim.new(2, 0)
    CircleCorner.Name = "CircleCorner"
    CircleCorner.Parent = Circle

    CircleName.Name = "CircleName"
    CircleName.Parent = Circle
    CircleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CircleName.BackgroundTransparency = 1.000
    CircleName.Size = UDim2.new(0, 38, 0, 37)
    CircleName.Font = Enum.Font.Gotham
    CircleName.Text = circletext
    CircleName.TextColor3 = Color3.fromRGB(255, 255, 255)
    CircleName.TextSize = 16.000

    GameTitle.Name = "GameTitle"
    GameTitle.Parent = LeftFrame
    GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameTitle.BackgroundTransparency = 1.000
    GameTitle.Position = UDim2.new(0.324129164, 0, 0.0892162398, 0)
    GameTitle.Size = UDim2.new(0, 71, 0, 20)
    GameTitle.Font = Enum.Font.Gotham
    GameTitle.Text = textgame
    GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    GameTitle.TextSize = 14.000
    GameTitle.TextTransparency = 0.400
    GameTitle.TextXAlignment = Enum.TextXAlignment.Left

    TabHolder.Name = "TabHolder"
    TabHolder.Parent = LeftFrame
    TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabHolder.BackgroundTransparency = 1.000
    TabHolder.Position = UDim2.new(0.0806451589, 0, 0.189360261, 0)
    TabHolder.Size = UDim2.new(0, 159, 0, 309)

    TabHoldLayout.Name = "TabHoldLayout"
    TabHoldLayout.Parent = TabHolder
    TabHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabHoldLayout.Padding = UDim.new(0, 3)

    RainbowLine.Name = "RainbowLine"
    RainbowLine.Parent = MainFrame
    RainbowLine.BackgroundColor3 = Color3.fromRGB(118, 106, 255)
    RainbowLine.Position = UDim2.new(-0.000674468291, 0, -0.000149783576, 0)
    RainbowLine.Size = UDim2.new(0, 614, 0, 2)

    RainbowLineCorner.CornerRadius = UDim.new(0, 7)
    RainbowLineCorner.Name = "RainbowLineCorner"
    RainbowLineCorner.Parent = RainbowLine

    ContainerHold.Name = "ContainerHold"
    ContainerHold.Parent = MainFrame

    DragFrame.Name = "DragFrame"
    DragFrame.Parent = MainFrame
    DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DragFrame.BackgroundTransparency = 1.000
    DragFrame.Position = UDim2.new(0.30130294, 0, 0.00253164559, 0)
    DragFrame.Size = UDim2.new(0, 428, 0, 21)
    MakeDraggable(DragFrame, MainFrame)

    coroutine.wrap(
        function()
            while wait() do
                RainbowLine.BackgroundColor3 = Color3.fromHSV(zigzag(counter), .8, 1)
                Circle.BackgroundColor3 = Color3.fromHSV(zigzag(counter), .8, 1)
            end
        end
    )()
    local Tabs = {}
    function Tabs:Tab(text)
        local Tab = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local Title = Instance.new("TextLabel")

        Tab.Name = "Tab"
        Tab.Parent = TabHolder
        Tab.BackgroundColor3 = Color3.fromRGB(118, 106, 255)
        Tab.Size = UDim2.new(0, 159, 0, 29)
        Tab.AutoButtonColor = false
        Tab.Font = Enum.Font.SourceSans
        Tab.Text = ""
        Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
        Tab.TextSize = 14.000
        Tab.BackgroundTransparency = 1

        TabCorner.CornerRadius = UDim.new(0, 6)
        TabCorner.Name = "TabCorner"
        TabCorner.Parent = Tab

        Title.Name = "Title"
        Title.Parent = Tab
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0566037744, 0, 0, 0)
        Title.Size = UDim2.new(0, 150, 0, 29)
        Title.Font = Enum.Font.Gotham
        Title.Text = text
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 14.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        local Container = Instance.new("ScrollingFrame")
        local ContainerLayout = Instance.new("UIListLayout")

        Container.Name = "Container"
        Container.Parent = ContainerHold
        Container.Active = true
        Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Container.BackgroundTransparency = 1.000
        Container.BorderSizePixel = 0
        Container.Position = UDim2.new(0.322475582, 0, 0.0506329127, 0)
        Container.Size = UDim2.new(0, 411, 0, 359)
        Container.ScrollBarThickness = 3
        Container.CanvasSize = UDim2.new(0, 0, 0, 0)
        Container.Visible = false
        Container.ScrollBarImageColor3 = Color3.fromRGB(42, 44, 50)

        ContainerLayout.Name = "ContainerLayout"
        ContainerLayout.Parent = Container
        ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerLayout.Padding = UDim.new(0, 6)

        if FirstTab == false then
            FirstTab = true
            Tab.BackgroundTransparency = 0
            Container.Visible = true
        end
        Tab.MouseButton1Click:Connect(
            function()
                for i, v in next, ContainerHold:GetChildren() do
                    if v.Name == "Container" then
                        v.Visible = false
                    end
                end

                for i, v in next, TabHolder:GetChildren() do
                    if v.ClassName == "TextButton" then
                        TweenService:Create(
                            v,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                            Tab,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                end
                Container.Visible = true
            end
        )
        coroutine.wrap(
            function()
                while wait() do
                    Tab.BackgroundColor3 = Color3.fromHSV(zigzag(counter), .8, 1)
                end
            end
        )()
        local ContainerItems = {}
        function ContainerItems:Button(text, callback)
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")

            local btn = {}
            btn.cb = callback

            local buttonT = {}

            Button.Name = "Button"
            Button.Parent = Container
            Button.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Button.Size = UDim2.new(0, 403, 0, 28)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.Text = text

            ButtonCorner.CornerRadius = UDim.new(0, 6)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            Button.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(37, 39, 44)}
                    ):Play()
                end
            )
            Button.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(32, 33, 37)}
                    ):Play()
                end
            )

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

            Button.MouseButton1Click:Connect(
                function()
                    pcall(btn.cb)
                    Button.TextSize = 0
                    TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 17}):Play()
                    wait(.2)
                    TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 14}):Play()
                end
            )

            function buttonT:ChangeCallback(newCallback)
                btn.cb = newCallback
            end

            return buttonT
        end
        function ContainerItems:Toggle(text, callback, default)
            local Toggled = false
            local toggleB = {}
            toggleB.Name = name
            
            local Toggle = Instance.new("TextButton")
            local ToggleCorner = Instance.new("UICorner")
            local Title = Instance.new("TextLabel")
            local ToggleFrame = Instance.new("Frame")
            local ToggleFrameCorner = Instance.new("UICorner")
            local ToggleFrameRainbow = Instance.new("Frame")
            local ToggleFrameRainbowCorner = Instance.new("UICorner")
            local ToggleDot = Instance.new("Frame")
            local ToggleDotCorner = Instance.new("UICorner")

            Toggle.Name = "Toggle"
            Toggle.Parent = Container
            Toggle.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Toggle.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
            Toggle.Size = UDim2.new(0, 403, 0, 28)
            Toggle.AutoButtonColor = false
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.TextSize = 14.000

            ToggleCorner.CornerRadius = UDim.new(0, 6)
            ToggleCorner.Name = "ToggleCorner"
            ToggleCorner.Parent = Toggle

            Title.Name = "Title"
            Title.Parent = Toggle
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
            Title.Size = UDim2.new(0, 192, 0, 28)
            Title.Font = Enum.Font.Gotham
            Title.Text = text
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 14.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = Toggle
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
            ToggleFrame.Position = UDim2.new(0.893300176, 0, 0.142857149, 0)
            ToggleFrame.Size = UDim2.new(0, 36, 0, 19)

            ToggleFrameCorner.CornerRadius = UDim.new(1, 0)
            ToggleFrameCorner.Name = "ToggleFrameCorner"
            ToggleFrameCorner.Parent = ToggleFrame

            ToggleFrameRainbow.Name = "ToggleFrameRainbow"
            ToggleFrameRainbow.Parent = ToggleFrame
            ToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            ToggleFrameRainbow.BackgroundTransparency = 1.000
            ToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
            ToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)

            ToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
            ToggleFrameRainbowCorner.Name = "ToggleFrameRainbowCorner"
            ToggleFrameRainbowCorner.Parent = ToggleFrameRainbow

            ToggleDot.Name = "ToggleDot"
            ToggleDot.Parent = ToggleFrameRainbow
            ToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
            ToggleDot.Size = UDim2.new(0, 16, 0, 16)

            ToggleDotCorner.CornerRadius = UDim.new(1, 0)
            ToggleDotCorner.Name = "ToggleDotCorner"
            ToggleDotCorner.Parent = ToggleDot

            if not default then
                default = false
            end

            local Toggled = default;

            if Toggled then
                TweenService:Create(ToggleFrameRainbow, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
                TweenService:Create( ToggleDot, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Position = UDim2.new(0.595, -3, 0.289000005, -4)}):Play()
                pcall(callback, Toggled)
            end;


            Toggle.MouseEnter:Connect(function()
                    TweenService:Create(Toggle,    TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(37, 39, 44)}):Play()
            end)
            Toggle.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(32, 33, 37)}
                    ):Play()
                end
            )

            local function toggleAnimation()
                if Toggled then
                    TweenService:Create(
                        ToggleFrameRainbow,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        ToggleDot,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                    ):Play()
                else
                    TweenService:Create(
                        ToggleFrameRainbow,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundTransparency = 1}
                    ):Play()
                    TweenService:Create(
                        ToggleDot,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                    ):Play()
                end
            end

            Toggle.MouseButton1Click:Connect(
                function()
                    Toggled = not Toggled
                    toggleAnimation()
                    pcall(callback, Toggled)
                end
            )

            function toggleB:SetTo(to)
                assert(to ~= nil, "nil passed to SetTo")
                Toggled = to
                toggleAnimation()
                pcall(callback, Toggle);
            end
            
            function toggleB:SetToNoCallback(to)
                assert(to ~= nil, "nil passed to SetToNoCallback")
                Toggled = to;
                toggleAnimation()
            end
            
            function toggleB:Get()
                return Toggled;
            end

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
            
            
            coroutine.wrap(
                function()
                    while wait() do
                        ToggleFrameRainbow.BackgroundColor3 = Color3.fromHSV(zigzag(counter), .8, 1)
                    end
                end
            )()
            return toggleB;
        end
        function ContainerItems:Slider(text, min, max, start, callback)
                        local dragging = false
            local Slider = Instance.new("TextButton")
            local Title = Instance.new("TextLabel")
            local SliderFrame = Instance.new("Frame")
            local SliderFrameCorner = Instance.new("UICorner")
            local SliderIndicator = Instance.new("Frame")
            local SliderIndicatorCorner = Instance.new("UICorner")
            local SliderCorner = Instance.new("UICorner")
            local Value = Instance.new("TextLabel")

            Slider.Name = "Slider"
            Slider.Parent = Container
            Slider.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Slider.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
            Slider.Size = UDim2.new(0, 403, 0, 49)
            Slider.AutoButtonColor = false
            Slider.Font = Enum.Font.Gotham
            Slider.Text = ""
            Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
            Slider.TextSize = 14.000

            Title.Name = "Title"
            Title.Parent = Slider
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
            Title.Size = UDim2.new(0, 192, 0, 28)
            Title.Font = Enum.Font.Gotham
            Title.Text = text
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 14.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = Slider
            SliderFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
            SliderFrame.Position = UDim2.new(0.0223324299, 0, 0.563266039, 0)
            SliderFrame.Size = UDim2.new(0, 384, 0, 11)

            SliderFrameCorner.Name = "SliderFrameCorner"
            SliderFrameCorner.Parent = SliderFrame

            SliderIndicator.Name = "SliderIndicator"
            SliderIndicator.Parent = SliderFrame
            SliderIndicator.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            SliderIndicator.BorderSizePixel = 0
            SliderIndicator.Position = UDim2.new(-0.00260408712, 0, 0.0363603085, 0)
            SliderIndicator.Size = UDim2.new((start or 0) / max, 0, 0, 11)

            SliderIndicatorCorner.Name = "SliderIndicatorCorner"
            SliderIndicatorCorner.Parent = SliderIndicator

            SliderCorner.CornerRadius = UDim.new(0, 6)
            SliderCorner.Name = "SliderCorner"
            SliderCorner.Parent = Slider

            Value.Name = "Value"
            Value.Parent = Slider
            Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Value.BackgroundTransparency = 1.000
            Value.Position = UDim2.new(0.496277869, 0, 0, 0)
            Value.Size = UDim2.new(0, 192, 0, 28)
            Value.Font = Enum.Font.Gotham
            Value.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
            Value.TextColor3 = Color3.fromRGB(255, 255, 255)
            Value.TextSize = 14.000
            Value.TextXAlignment = Enum.TextXAlignment.Right

            local function slide(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        11
                    )
                SliderIndicator:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                local val = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                Value.Text = tostring(val)
                pcall(callback, val)
            end

            SliderFrame.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        slide(input)
                        dragging = true
                    end
                end
            )

            SliderFrame.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end
            )

            UserInputService.InputChanged:Connect(
                function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        slide(input)
                    end
                end
            )

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

            coroutine.wrap(
                function()
                    while wait() do
                        SliderIndicator.BackgroundColor3 = Color3.fromHSV(zigzag(counter), .8, 1)
                    end
                end
            )()
        end
        function ContainerItems:Dropdown(text, list, callback)
            local DropToggled = false
            local FrameSize = 0
            local ItemCount = 0
            local DropdownB = {}

            local Dropdown = Instance.new("TextButton")
            local Title = Instance.new("TextLabel")
            local DropdownCorner = Instance.new("UICorner")
            local Arrow = Instance.new("ImageLabel")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Container
            Dropdown.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Dropdown.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
            Dropdown.Size = UDim2.new(0, 403, 0, 28)
            Dropdown.AutoButtonColor = false
            Dropdown.Font = Enum.Font.Gotham
            Dropdown.Text = ""
            Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.TextSize = 14.000

            Title.Name = "Title"
            Title.Parent = Dropdown
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
            Title.Size = UDim2.new(0, 192, 0, 28)
            Title.Font = Enum.Font.Gotham
            Title.Text = text
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 14.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            DropdownCorner.CornerRadius = UDim.new(0, 6)
            DropdownCorner.Name = "DropdownCorner"
            DropdownCorner.Parent = Dropdown

            Arrow.Name = "Arrow"
            Arrow.Parent = Dropdown
            Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Arrow.BackgroundTransparency = 1.000
            Arrow.Position = UDim2.new(0.923076808, 0, 0.0357142836, 0)
            Arrow.Size = UDim2.new(0, 25, 0, 25)
            Arrow.Image = "http://www.roblox.com/asset/?id=6034818372"

            local DropdownFrame = Instance.new("Frame")
            local DropdownFrameCorner = Instance.new("UICorner")
            local DropdownHolder = Instance.new("ScrollingFrame")
            local DropdownItemLayout = Instance.new("UIListLayout")
            local DropdownItemHolder = Instance.new("UIPadding")

            DropdownFrame.Name = "DropdownFrame"
            DropdownFrame.Parent = Container
            DropdownFrame.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            DropdownFrame.BorderSizePixel = 0
            DropdownFrame.Position = UDim2.new(0.334374994, 0, 0.604166687, 0)
            DropdownFrame.Size = UDim2.new(0, 403, 0, 0)
            DropdownFrame.Visible = false

            DropdownFrameCorner.Name = "DropdownFrameCorner"
            DropdownFrameCorner.Parent = DropdownFrame

            DropdownHolder.Name = "DropdownHolder"
            DropdownHolder.Parent = DropdownFrame
            DropdownHolder.Active = true
            DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownHolder.BackgroundTransparency = 1.000
            DropdownHolder.BorderSizePixel = 0
            DropdownHolder.Position = UDim2.new(0.0263156947, 0, 0.00326599111, 0)
            DropdownHolder.Size = UDim2.new(0, 386, 0, 0)
            DropdownHolder.ScrollBarThickness = 3
            DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropdownHolder.ScrollBarImageColor3 = Color3.fromRGB(48, 50, 56)

            DropdownItemLayout.Name = "DropdownItemLayout"
            DropdownItemLayout.Parent = DropdownHolder
            DropdownItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
            DropdownItemLayout.Padding = UDim.new(0, 5)

            DropdownItemHolder.Name = "DropdownItemHolder"
            DropdownItemHolder.Parent = DropdownHolder
            DropdownItemHolder.PaddingBottom = UDim.new(0, 8)
            DropdownItemHolder.PaddingTop = UDim.new(0, 8)

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

            Dropdown.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(37, 39, 44)}
                    ):Play()
                end
            )
            Dropdown.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(32, 33, 37)}
                    ):Play()
                end
            )

            Dropdown.MouseButton1Click:Connect(
                function()
                    if DropToggled == false then
                        DropdownFrame.Visible = true
                        DropdownFrame:TweenSize(
                            UDim2.new(0, 403, 0, FrameSize),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        DropdownHolder:TweenSize(
                            UDim2.new(0, 386, 0, FrameSize),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        TweenService:Create(
                            Arrow,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        repeat
                            wait()
                        until DropdownFrame.Size == UDim2.new(0, 403, 0, FrameSize)
                        Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                    else
                        DropdownFrame:TweenSize(
                            UDim2.new(0, 403, 0, 0),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        DropdownHolder:TweenSize(
                            UDim2.new(0, 386, 0, 0),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        TweenService:Create(
                            Arrow,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        repeat
                            wait()
                        until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                        DropdownFrame.Visible = false
                        Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                    end
                    DropToggled = not DropToggled
                end
            )
            local frameSizes = {
                [1] = 34,
                [2] = 69,
                [3] = 99,
                [4] = 129,
                [5] = 159,
                [6] = 189,
                [7] = 219,
                [8] = 249,
                [9] = 290
            }
            ItemCount = 0
            for i, v in next, list do
                ItemCount = ItemCount + 1

                if ItemCount <= #frameSizes then
                    FrameSize = frameSizes[ItemCount]
                else
                    FrameSize = frameSizes[#frameSizes]
                end

                local Item = Instance.new("TextButton")
                local ItemCorner = Instance.new("UICorner")

                Item.Name = "Item"
                Item.Parent = DropdownHolder
                Item.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
                Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
                Item.Size = UDim2.new(0, 382, 0, 24)
                Item.AutoButtonColor = false
                Item.Font = Enum.Font.Gotham
                Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                Item.TextSize = 14.000
                Item.Text = v

                ItemCorner.Name = "ItemCorner"
                ItemCorner.Parent = Item

                Item.MouseEnter:Connect(
                    function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad),
                            {BackgroundColor3 = Color3.fromRGB(37, 39, 44)}
                        ):Play()
                    end
                )
                Item.MouseLeave:Connect(
                    function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad),
                            {BackgroundColor3 = Color3.fromRGB(32, 33, 37)}
                        ):Play()
                    end
                )

                Item.MouseButton1Click:Connect(
                    function()
                        Title.Text = text .. " - " .. v
                        pcall(callback, v)
                        DropToggled = not DropToggled
                        DropdownFrame:TweenSize(
                            UDim2.new(0, 403, 0, 0),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,    
                            true
                        )
                        DropdownHolder:TweenSize(
                            UDim2.new(0, 386, 0, 0),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        TweenService:Create(
                            Arrow,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        repeat
                            wait()
                        until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                        DropdownFrame.Visible = false; wait()
                        Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                    end
                )

                

                DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
            end
            function DropdownB:ChangeList(newList) 
                    ItemCount = 0
                    for _,item in pairs(DropdownHolder:GetChildren()) do item:Destroy() end
                    for i, v in next, newList do
                        ItemCount = ItemCount + 1    

                        if ItemCount <= #frameSizes then
                            FrameSize = frameSizes[ItemCount]
                        else
                            FrameSize = frameSizes[#frameSizes]
                        end

                        local Item = Instance.new("TextButton")
                        local ItemCorner = Instance.new("UICorner")

                        Item.Name = "Item"
                        Item.Parent = DropdownHolder
                        Item.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
                        Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
                        Item.Size = UDim2.new(0, 382, 0, 24)
                        Item.AutoButtonColor = false
                        Item.Font = Enum.Font.Gotham
                        Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Item.TextSize = 14.000
                        Item.Text = v

                        ItemCorner.Name = "ItemCorner"
                        ItemCorner.Parent = Item

                        Item.MouseEnter:Connect(function()
                            TweenService:Create(Item, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(37, 39, 44)}):Play()
                        end)
                        Item.MouseLeave:Connect(function()
                            TweenService:Create(Item, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(32, 33, 37)}):Play()
                        end)

                        Item.MouseButton1Click:Connect(function()
                            Title.Text = text .. " - " .. v
                            pcall(callback, v)
                            DropToggled = not DropToggled
                            DropdownFrame:TweenSize(UDim2.new(0, 403, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
                            DropdownHolder:TweenSize(UDim2.new(0, 386, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
                            TweenService:Create(Arrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                            repeat wait() until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                            DropdownFrame.Visible = false; wait()
                            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                        end)
                        DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
                    end
                    DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
                end
                return DropdownB
        end
        function ContainerItems:Colorpicker(text, preset, callback)
            local ColorPickerToggled = false
            local OldToggleColor = Color3.fromRGB(0, 0, 0)
            local OldColor = Color3.fromRGB(0, 0, 0)
            local OldColorSelectionPosition = nil
            local OldHueSelectionPosition = nil
            local ColorH, ColorS, ColorV = 1, 1, 1
            local RainbowColorPicker = false
            local ColorPickerInput = nil
            local ColorInput = nil
            local HueInput = nil

            local Colorpicker = Instance.new("TextButton")
            local Title = Instance.new("TextLabel")
            local BoxColor = Instance.new("Frame")
            local BoxcolorCorner = Instance.new("UICorner")
            local ColorpickerCorner = Instance.new("UICorner")

            Colorpicker.Name = "Colorpicker"
            Colorpicker.Parent = Container
            Colorpicker.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Colorpicker.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
            Colorpicker.Size = UDim2.new(0, 403, 0, 28)
            Colorpicker.AutoButtonColor = false
            Colorpicker.Font = Enum.Font.Gotham
            Colorpicker.Text = ""
            Colorpicker.TextColor3 = Color3.fromRGB(255, 255, 255)
            Colorpicker.TextSize = 14.000

            Title.Name = "Title"
            Title.Parent = Colorpicker
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
            Title.Size = UDim2.new(0, 192, 0, 28)
            Title.Font = Enum.Font.Gotham
            Title.Text = text
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 14.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            BoxColor.Name = "Boxcolor"
            BoxColor.Parent = Colorpicker
            BoxColor.BackgroundColor3 = preset
            BoxColor.Position = UDim2.new(0.893300176, 0, 0.142857149, 0)
            BoxColor.Size = UDim2.new(0, 36, 0, 19)

            BoxcolorCorner.CornerRadius = UDim.new(0, 6)
            BoxcolorCorner.Name = "BoxcolorCorner"
            BoxcolorCorner.Parent = BoxColor

            ColorpickerCorner.CornerRadius = UDim.new(0, 6)
            ColorpickerCorner.Name = "ColorpickerCorner"
            ColorpickerCorner.Parent = Colorpicker

            local ColorpickerFrame = Instance.new("Frame")
            local DropdownFrameCorner = Instance.new("UICorner")
            local Hue = Instance.new("ImageLabel")
            local HueCorner = Instance.new("UICorner")
            local HueGradient = Instance.new("UIGradient")
            local HueSelection = Instance.new("ImageLabel")
            local Color = Instance.new("ImageLabel")
            local ColorCorner = Instance.new("UICorner")
            local ColorSelection = Instance.new("ImageLabel")
            local Confirm = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            local RainbowToggle = Instance.new("TextButton")
            local RainbowToggleCorner = Instance.new("UICorner")
            local RainbowTitle = Instance.new("TextLabel")
            local RainbowToggleFrame = Instance.new("Frame")
            local RainbowToggleFrameCorner = Instance.new("UICorner")
            local RainbowToggleFrameRainbow = Instance.new("Frame")
            local RainbowToggleFrameRainbowCorner = Instance.new("UICorner")
            local RainbowToggleDot = Instance.new("Frame")
            local RainbowToggleDotCorner = Instance.new("UICorner")

            ColorpickerFrame.Name = "ColorpickerFrame"
            ColorpickerFrame.Parent = Container
            ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            ColorpickerFrame.BorderSizePixel = 0
            ColorpickerFrame.Position = UDim2.new(0.165624991, 0, 0.671052635, 0)
            ColorpickerFrame.Size = UDim2.new(0, 403, 0, 0)
            ColorpickerFrame.Visible = false
            ColorpickerFrame.ClipsDescendants = true

            DropdownFrameCorner.Name = "DropdownFrameCorner"
            DropdownFrameCorner.Parent = ColorpickerFrame

            Hue.Name = "Hue"
            Hue.Parent = ColorpickerFrame
            Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Hue.Position = UDim2.new(0, 209, 0, 9)
            Hue.Size = UDim2.new(0, 25, 0, 80)

            HueCorner.CornerRadius = UDim.new(0, 3)
            HueCorner.Name = "HueCorner"
            HueCorner.Parent = Hue

            HueGradient.Color =
                ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
                    ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
                    ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
                    ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
                    ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
                }
            HueGradient.Rotation = 270
            HueGradient.Name = "HueGradient"
            HueGradient.Parent = Hue

            HueSelection.Name = "HueSelection"
            HueSelection.Parent = Hue
            HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HueSelection.BackgroundTransparency = 1.000
            HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
            HueSelection.Size = UDim2.new(0, 18, 0, 18)
            HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

            Color.Name = "Color"
            Color.Parent = ColorpickerFrame
            Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            Color.Position = UDim2.new(0, 9, 0, 9)
            Color.Size = UDim2.new(0, 194, 0, 80)
            Color.ZIndex = 10
            Color.Image = "rbxassetid://4155801252"

            ColorCorner.CornerRadius = UDim.new(0, 3)
            ColorCorner.Name = "ColorCorner"
            ColorCorner.Parent = Color

            ColorSelection.Name = "ColorSelection"
            ColorSelection.Parent = Color
            ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorSelection.BackgroundTransparency = 1.000
            ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
            ColorSelection.Size = UDim2.new(0, 18, 0, 18)
            ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
            ColorSelection.ScaleType = Enum.ScaleType.Fit

            Confirm.Name = "Confirm"
            Confirm.Parent = ColorpickerFrame
            Confirm.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Confirm.BackgroundTransparency = 0.010
            Confirm.Position = UDim2.new(0.612244904, 0, 0.0900000036, 0)
            Confirm.Size = UDim2.new(0, 145, 0, 27)
            Confirm.AutoButtonColor = false
            Confirm.Font = Enum.Font.Gotham
            Confirm.Text = "Confirm"
            Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
            Confirm.TextSize = 14.000

            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Confirm

            RainbowToggle.Name = "RainbowToggle"
            RainbowToggle.Parent = ColorpickerFrame
            RainbowToggle.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            RainbowToggle.Position = UDim2.new(0.610732794, 0, 0.431324542, 0)
            RainbowToggle.Size = UDim2.new(0, 145, 0, 27)
            RainbowToggle.AutoButtonColor = false
            RainbowToggle.Font = Enum.Font.Gotham
            RainbowToggle.Text = ""
            RainbowToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            RainbowToggle.TextSize = 14.000

            RainbowToggleCorner.Name = "RainbowToggleCorner"
            RainbowToggleCorner.Parent = RainbowToggle

            RainbowTitle.Name = "RainbowTitle"
            RainbowTitle.Parent = RainbowToggle
            RainbowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            RainbowTitle.BackgroundTransparency = 1.000
            RainbowTitle.Position = UDim2.new(0.0204080511, 0, 0, 0)
            RainbowTitle.Size = UDim2.new(0, 29, 0, 27)
            RainbowTitle.Font = Enum.Font.Gotham
            RainbowTitle.Text = "Rainbow" ---------------------------------------------------------------------
            RainbowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            RainbowTitle.TextSize = 14.000
            RainbowTitle.TextXAlignment = Enum.TextXAlignment.Left

            RainbowToggleFrame.Name = "RainbowToggleFrame"
            RainbowToggleFrame.Parent = RainbowToggle
            RainbowToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
            RainbowToggleFrame.Position = UDim2.new(0.693, 0, 0.142857149, 0)
            RainbowToggleFrame.Size = UDim2.new(0, 36, 0, 19)

            RainbowToggleFrameCorner.CornerRadius = UDim.new(1, 0)
            RainbowToggleFrameCorner.Name = "RainbowToggleFrameCorner"
            RainbowToggleFrameCorner.Parent = RainbowToggleFrame

            RainbowToggleFrameRainbow.Name = "RainbowToggleFrameRainbow"
            RainbowToggleFrameRainbow.Parent = RainbowToggleFrame
            RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            RainbowToggleFrameRainbow.BackgroundTransparency = 1.000
            RainbowToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
            RainbowToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)

            RainbowToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
            RainbowToggleFrameRainbowCorner.Name = "RainbowToggleFrameRainbowCorner"
            RainbowToggleFrameRainbowCorner.Parent = RainbowToggleFrameRainbow

            RainbowToggleDot.Name = "RainbowToggleDot"
            RainbowToggleDot.Parent = RainbowToggleFrameRainbow
            RainbowToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            RainbowToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
            RainbowToggleDot.Size = UDim2.new(0, 16, 0, 16)

            RainbowToggleDotCorner.CornerRadius = UDim.new(1, 0)
            RainbowToggleDotCorner.Name = "RainbowToggleDotCorner"
            RainbowToggleDotCorner.Parent = RainbowToggleDot

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

            Colorpicker.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        Colorpicker,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(37, 39, 44)}
                    ):Play()
                end
            )
            Colorpicker.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        Colorpicker,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad),
                        {BackgroundColor3 = Color3.fromRGB(32, 33, 37)}
                    ):Play()
                end
            )

            local function UpdateColorPicker(nope)
                BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
                Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

                pcall(callback, BoxColor.BackgroundColor3)
            end

            ColorH =
                1 -
                (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                    Hue.AbsoluteSize.Y)
            ColorS =
                (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                    Color.AbsoluteSize.X)
            ColorV =
                1 -
                (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                    Color.AbsoluteSize.Y)

            BoxColor.BackgroundColor3 = preset
            Color.BackgroundColor3 = preset
            pcall(callback, BoxColor.BackgroundColor3)

            Color.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if ColorInput then
                            ColorInput:Disconnect()
                        end

                        ColorInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local ColorX =
                                    (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                        Color.AbsoluteSize.X)
                                local ColorY =
                                    (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                        Color.AbsoluteSize.Y)

                                ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                                ColorS = ColorX
                                ColorV = 1 - ColorY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Color.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
                    end
                end
            )

            Hue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if HueInput then
                            HueInput:Disconnect()
                        end

                        HueInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local HueY =
                                    (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                        Hue.AbsoluteSize.Y)

                                HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
                                ColorH = 1 - HueY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Hue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if HueInput then
                            HueInput:Disconnect()
                        end
                    end
                end
            )

            RainbowToggle.MouseButton1Down:Connect(
                function()
                    RainbowColorPicker = not RainbowColorPicker

                    if ColorInput then
                        ColorInput:Disconnect()
                    end

                    if HueInput then
                        HueInput:Disconnect()
                    end

                    if RainbowColorPicker then
                        TweenService:Create(
                            RainbowToggleFrameRainbow,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad),
                            {BackgroundTransparency = 0}
                        ):Play()
                        TweenService:Create(
                            RainbowToggleDot,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad),
                            {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                        ):Play()

                        OldToggleColor = BoxColor.BackgroundColor3
                        OldColor = Color.BackgroundColor3
                        OldColorSelectionPosition = ColorSelection.Position
                        OldHueSelectionPosition = HueSelection.Position

                        while RainbowColorPicker do
                            BoxColor.BackgroundColor3 = Color3.fromHSV(VLib.RainbowColorValue, 1, 1)
                            Color.BackgroundColor3 = Color3.fromHSV(VLib.RainbowColorValue, 1, 1)

                            ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                            HueSelection.Position = UDim2.new(0.48, 0, 0, VLib.HueSelectionPosition)

                            pcall(callback, BoxColor.BackgroundColor3)
                            wait()
                        end
                    elseif not RainbowColorPicker then
                        TweenService:Create(
                            RainbowToggleFrameRainbow,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad),
                            {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                            RainbowToggleDot,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad),
                            {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                        ):Play()

                        BoxColor.BackgroundColor3 = OldToggleColor
                        Color.BackgroundColor3 = OldColor

                        ColorSelection.Position = OldColorSelectionPosition
                        HueSelection.Position = OldHueSelectionPosition

                        pcall(callback, BoxColor.BackgroundColor3)
                    end
                end
            )

            Colorpicker.MouseButton1Click:Connect(
                function()
                    if ColorPickerToggled == false then
                        ColorPickerToggled = not ColorPickerToggled
                        ColorpickerFrame.Visible = true
                        ColorpickerFrame:TweenSize(
                            UDim2.new(0, 403, 0, 100),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        repeat
                            wait()
                        until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 100)
                        Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                    else
                        ColorPickerToggled = not ColorPickerToggled
                        ColorpickerFrame:TweenSize(
                            UDim2.new(0, 403, 0, 0),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            0.1,
                            true
                        )
                        repeat
                            wait()
                        until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 0)
                        ColorpickerFrame.Visible = false
                        Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                    end
                end
            )

            Confirm.MouseButton1Click:Connect(
                function()
                    ColorPickerToggled = not ColorPickerToggled
                    ColorpickerFrame:TweenSize(
                        UDim2.new(0, 403, 0, 0),
                        Enum.EasingDirection.Out,
                        Enum.EasingStyle.Quart,
                        0.1,
                        true
                    )
                    repeat
                        wait()
                    until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 0)
                    ColorpickerFrame.Visible = false
                    Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                end
            )

            coroutine.wrap(
                function()
                    while wait() do
                        RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromHSV(zigzag(counter), .8, 1)
                    end
                end
            )()
        end
        function ContainerItems:Label(text)
            local Label = Instance.new("TextButton")
            local LabelCorner = Instance.new("UICorner")

            Label.Name = "Label"
            Label.Parent = Container
            Label.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Label.Size = UDim2.new(0, 403, 0, 28)
            Label.AutoButtonColor = false
            Label.Font = Enum.Font.Gotham
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 14.000
            Label.Text = text
            Label.BackgroundTransparency = 1

            LabelCorner.CornerRadius = UDim.new(0, 6)
            LabelCorner.Name = "LabelCorner"
            LabelCorner.Parent = Label

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
        end
        
        function ContainerItems:Header(text)
            local Label = Instance.new("TextButton")
            local LabelCorner = Instance.new("UICorner")

            Label.Name = "Label"
            Label.Parent = Container
            Label.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Label.Size = UDim2.new(0, 403, 0, 28)
            Label.AutoButtonColor = false
            Label.Font = Enum.Font.ArialBold
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 20.000
            Label.Text = text
            Label.BackgroundTransparency = 1

            LabelCorner.CornerRadius = UDim.new(0, 6)
            LabelCorner.Name = "LabelCorner"
            LabelCorner.Parent = Label

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
        end


        function ContainerItems:Textbox(text, disapper, callback)
            local Textbox = Instance.new("TextButton")
            local Title = Instance.new("TextLabel")
            local TextboxFrame = Instance.new("Frame")
            local TextboxFrameCorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local TextboxCorner = Instance.new("UICorner")

            Textbox.Name = "Textbox"
            Textbox.Parent = Container
            Textbox.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
            Textbox.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
            Textbox.Size = UDim2.new(0, 403, 0, 28)
            Textbox.AutoButtonColor = false
            Textbox.Font = Enum.Font.Gotham
            Textbox.Text = ""
            Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
            Textbox.TextSize = 14.000

            Title.Name = "Title"
            Title.Parent = Textbox
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
            Title.Size = UDim2.new(0, 192, 0, 28)
            Title.Font = Enum.Font.Gotham
            Title.Text = text
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 14.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            TextboxFrame.Name = "TextboxFrame"
            TextboxFrame.Parent = Textbox
            TextboxFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
            TextboxFrame.Position = UDim2.new(0.650124013, 0, 0.142857149, 0)
            TextboxFrame.Size = UDim2.new(0, 134, 0, 19)

            TextboxFrameCorner.CornerRadius = UDim.new(0, 6)
            TextboxFrameCorner.Name = "TextboxFrameCorner"
            TextboxFrameCorner.Parent = TextboxFrame

            TextBox.Parent = TextboxFrame
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.Size = UDim2.new(0, 134, 0, 19)
            TextBox.Font = Enum.Font.Gotham
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 14.000

            TextboxCorner.CornerRadius = UDim.new(0, 6)
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.Parent = Textbox

            TextBox.FocusLost:Connect(
                function(ep)
                    if ep then
                        if #TextBox.Text > 0 then
                            pcall(callback, TextBox.Text)
                            if disapper then
                                TextBox.Text = ""
                            end
                        end
                    end
                end
            )

            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
        end
        return ContainerItems
    end
    return Tabs
end
return VLib
