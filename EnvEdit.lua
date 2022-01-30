-- Objects

local EnvEdit = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Top = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Fold = Instance.new("TextButton")
local Fullscreen = Instance.new("TextButton")
local Scripts = Instance.new("ScrollingFrame")
local Methods = Instance.new("ScrollingFrame")
local MethodName = Instance.new("TextBox")
local AddMethod = Instance.new("TextButton")
local Buttons = Instance.new("ScrollingFrame")
local EnableLog = Instance.new("TextButton")
local ClearScripts = Instance.new("TextButton")
local Decompile = Instance.new("TextButton")
local FCalls = Instance.new("TextButton")
local EditFrame = Instance.new("Frame")
local Locals = Instance.new("ScrollingFrame")
local Upvalues = Instance.new("ScrollingFrame")
local Setupval = Instance.new("TextButton")
local LocalsLabel = Instance.new("TextLabel")
local UpvaluesLabel = Instance.new("TextLabel")
local SetUpvalueTable = Instance.new("TextButton")
local Setlocal = Instance.new("TextButton")
local SetLocalTable = Instance.new("TextButton")
local SourceView = Instance.new("ScrollingFrame")
local ShowEditor = Instance.new("TextButton")
local ShowSource = Instance.new("TextButton")
local FCallEdit = Instance.new("Frame")
local FCallsFrame = Instance.new("ScrollingFrame")
local Constants = Instance.new("ScrollingFrame")
local ConstantsLabel = Instance.new("TextLabel")
local FunctionLabel = Instance.new("TextLabel")
local SetConstants = Instance.new("TextButton")
local InstancePath = Instance.new("TextLabel")
local ScriptEnable = Instance.new("ScrollingFrame")
local ScriptLogLabel = Instance.new("TextLabel")
local GameScriptsLabel = Instance.new("TextLabel")
local MethodsLabel = Instance.new("TextLabel")
local CallerName = Instance.new("TextLabel")
local Ico = Instance.new("ImageLabel")
local CallerMethodName = Instance.new("TextLabel")
local Ico_2 = Instance.new("ImageLabel")
local SearchScript = Instance.new("TextBox")
local Toolbox = Instance.new("Frame")
local Button = Instance.new("TextButton")
local Edit = Instance.new("TextBox")
local UnAssignable = Instance.new("TextLabel")
local SBTN = Instance.new("TextButton")
local Ico_3 = Instance.new("ImageLabel")
local SourceLine = Instance.new("Frame")
local Source = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Comments = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local Field = Instance.new("Frame")
local FieldName = Instance.new("TextLabel")
local GetInstPath = Instance.new("TextButton")
local ScriptButton = Instance.new("TextButton")
local Ico_4 = Instance.new("ImageLabel")
local Status = Instance.new("ImageLabel")
local FCallField = Instance.new("Frame")
local Function = Instance.new("Frame")
local Ico_5 = Instance.new("ImageLabel")
local FuncName = Instance.new("TextLabel")
local EditVars = Instance.new("TextButton")
local CallFunc = Instance.new("TextButton")
local RemoveFunc = Instance.new("TextButton")
local DecompFunc = Instance.new("TextButton")
local LoadFunc = Instance.new("TextButton")
local ArgLoadstring = Instance.new("Frame")
local Top_2 = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local ScriptInput = Instance.new("ScrollingFrame")
local ScriptBox = Instance.new("TextBox")
local SetParameters = Instance.new("TextButton")

-- Properties

EnvEdit.Name = "EnvEdit"
EnvEdit.Parent = game.Players.LocalPlayer.PlayerGui
EnvEdit.ResetOnSpawn = false

BG.Name = "BG"
BG.Parent = EnvEdit
BG.Active = true
BG.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
BG.BorderColor3 = Color3.new(0, 0, 0)
BG.Draggable = true
BG.Position = UDim2.new(0.5, -625, 0, 29)
BG.Size = UDim2.new(0.5, 250, 0.800000012, 0)

Top.Name = "Top"
Top.Parent = BG
Top.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Top.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Top.Size = UDim2.new(1, 0, 0, 20)
Top.ZIndex = 2

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, -80, 0, 0)
Title.Size = UDim2.new(0, 160, 1, 0)
Title.ZIndex = 3
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size14
Title.Text = "EnvEdit R1"
Title.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title.TextSize = 14

Fold.Name = "Fold"
Fold.Parent = Top
Fold.BackgroundColor3 = Color3.new(0.235294, 0.117647, 0.117647)
Fold.BorderSizePixel = 0
Fold.Position = UDim2.new(1, -50, 0, 0)
Fold.Size = UDim2.new(0, 50, 1, 0)
Fold.ZIndex = 3
Fold.Font = Enum.Font.SourceSansBold
Fold.FontSize = Enum.FontSize.Size14
Fold.Text = "_"
Fold.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Fold.TextSize = 14

Fullscreen.Name = "Fullscreen"
Fullscreen.Parent = Top
Fullscreen.BackgroundColor3 = Color3.new(0.235294, 0.117647, 0.117647)
Fullscreen.BorderSizePixel = 0
Fullscreen.Position = UDim2.new(1, -110, 0, 0)
Fullscreen.Size = UDim2.new(0, 50, 1, 0)
Fullscreen.ZIndex = 3
Fullscreen.Font = Enum.Font.SourceSansBold
Fullscreen.FontSize = Enum.FontSize.Size14
Fullscreen.Text = "[]"
Fullscreen.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Fullscreen.TextSize = 14

Scripts.Name = "Scripts"
Scripts.Parent = BG
Scripts.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Scripts.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scripts.Position = UDim2.new(0, 10, 0, 80)
Scripts.Selectable = false
Scripts.Size = UDim2.new(0, 180, 0, 130)
Scripts.ZIndex = 2
Scripts.BottomImage = "rbxassetid://491055673"
Scripts.MidImage = "rbxassetid://491055673"
Scripts.ScrollBarThickness = 0
Scripts.TopImage = "rbxassetid://491055673"

Methods.Name = "Methods"
Methods.Parent = BG
Methods.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Methods.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Methods.Position = UDim2.new(0, 10, 1, -150)
Methods.Size = UDim2.new(0, 180, 0, 140)
Methods.ZIndex = 2
Methods.BottomImage = "rbxassetid://491055673"
Methods.MidImage = "rbxassetid://491055673"
Methods.ScrollBarThickness = 0
Methods.TopImage = "rbxassetid://491055673"

MethodName.Name = "MethodName"
MethodName.Parent = BG
MethodName.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
MethodName.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
MethodName.Position = UDim2.new(0, 200, 1, -60)
MethodName.Size = UDim2.new(0, 200, 0, 20)
MethodName.ZIndex = 3
MethodName.Font = Enum.Font.SourceSansBold
MethodName.FontSize = Enum.FontSize.Size14
MethodName.ShowNativeInput = false
MethodName.Text = ""
MethodName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
MethodName.TextSize = 14

AddMethod.Name = "AddMethod"
AddMethod.Parent = BG
AddMethod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
AddMethod.BorderColor3 = Color3.new(0.117647, 0.235294, 0.117647)
AddMethod.Position = UDim2.new(0, 200, 1, -30)
AddMethod.Size = UDim2.new(0, 200, 0, 20)
AddMethod.Font = Enum.Font.SourceSansBold
AddMethod.FontSize = Enum.FontSize.Size14
AddMethod.Text = "ADD METHOD"
AddMethod.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
AddMethod.TextSize = 14

Buttons.Name = "Buttons"
Buttons.Parent = BG
Buttons.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Buttons.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Buttons.Position = UDim2.new(0, 10, 0, 30)
Buttons.Size = UDim2.new(1, -20, 0, 30)
Buttons.ZIndex = 2
Buttons.BottomImage = "rbxassetid://491055673"
Buttons.CanvasSize = UDim2.new(0, 0, 0, 0)
Buttons.MidImage = "rbxassetid://491055673"
Buttons.ScrollBarThickness = 5
Buttons.TopImage = "rbxassetid://491055673"

EnableLog.Name = "EnableLog"
EnableLog.Parent = Buttons
EnableLog.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
EnableLog.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
EnableLog.Position = UDim2.new(0, 10, 0.5, -10)
EnableLog.Size = UDim2.new(0, 100, 0, 20)
EnableLog.ZIndex = 3
EnableLog.Font = Enum.Font.SourceSansBold
EnableLog.FontSize = Enum.FontSize.Size14
EnableLog.Text = "ENABLE LOG"
EnableLog.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
EnableLog.TextSize = 14

ClearScripts.Name = "ClearScripts"
ClearScripts.Parent = Buttons
ClearScripts.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ClearScripts.BorderColor3 = Color3.new(0.137255, 0.27451, 0.137255)
ClearScripts.Position = UDim2.new(0, 120, 0.5, -10)
ClearScripts.Size = UDim2.new(0, 100, 0, 20)
ClearScripts.ZIndex = 3
ClearScripts.Font = Enum.Font.SourceSansBold
ClearScripts.FontSize = Enum.FontSize.Size14
ClearScripts.Text = "CLEAR SCRIPTS"
ClearScripts.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
ClearScripts.TextSize = 14

Decompile.Name = "Decompile"
Decompile.Parent = Buttons
Decompile.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Decompile.BorderColor3 = Color3.new(0.137255, 0.27451, 0.137255)
Decompile.Position = UDim2.new(0, 230, 0.5, -10)
Decompile.Size = UDim2.new(0, 100, 0, 20)
Decompile.ZIndex = 3
Decompile.Font = Enum.Font.SourceSansBold
Decompile.FontSize = Enum.FontSize.Size14
Decompile.Text = "DECOMPILE"
Decompile.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
Decompile.TextSize = 14

FCalls.Name = "FCalls"
FCalls.Parent = Buttons
FCalls.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FCalls.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
FCalls.Position = UDim2.new(0, 340, 0.5, -10)
FCalls.Size = UDim2.new(0, 100, 0, 20)
FCalls.ZIndex = 3
FCalls.Font = Enum.Font.SourceSansBold
FCalls.FontSize = Enum.FontSize.Size14
FCalls.Text = "FUNC-CALLS"
FCalls.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FCalls.TextSize = 14

EditFrame.Name = "EditFrame"
EditFrame.Parent = BG
EditFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
EditFrame.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
EditFrame.Position = UDim2.new(0, 200, 0, 70)
EditFrame.Size = UDim2.new(1, -210, 1, -140)
EditFrame.ZIndex = 2

Locals.Name = "Locals"
Locals.Parent = EditFrame
Locals.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Locals.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Locals.Position = UDim2.new(0, 10, 0, 20)
Locals.Size = UDim2.new(0.5, -20, 1, -60)
Locals.ZIndex = 3
Locals.BottomImage = "rbxassetid://491055673"
Locals.CanvasSize = UDim2.new(0, 0, 10, 0)
Locals.MidImage = "rbxassetid://491055673"
Locals.ScrollBarThickness = 0
Locals.TopImage = "rbxassetid://491055673"

Upvalues.Name = "Upvalues"
Upvalues.Parent = EditFrame
Upvalues.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Upvalues.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Upvalues.Position = UDim2.new(0.5, 10, 0, 20)
Upvalues.Size = UDim2.new(0.5, -20, 1, -60)
Upvalues.ZIndex = 3
Upvalues.BottomImage = "rbxassetid://491055673"
Upvalues.CanvasSize = UDim2.new(0, 0, 10, 0)
Upvalues.MidImage = "rbxassetid://491055673"
Upvalues.ScrollBarThickness = 0
Upvalues.TopImage = "rbxassetid://491055673"

Setupval.Name = "Setupval"
Setupval.Parent = EditFrame
Setupval.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Setupval.BorderColor3 = Color3.new(0.156863, 0.313726, 0.156863)
Setupval.Position = UDim2.new(0.5, 10, 1, -30)
Setupval.Size = UDim2.new(0, 130, 0, 20)
Setupval.ZIndex = 3
Setupval.Font = Enum.Font.SourceSansBold
Setupval.FontSize = Enum.FontSize.Size14
Setupval.Text = "SET UPVALUES"
Setupval.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
Setupval.TextSize = 14

LocalsLabel.Name = "LocalsLabel"
LocalsLabel.Parent = EditFrame
LocalsLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
LocalsLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
LocalsLabel.Position = UDim2.new(0, 10, 0, 10)
LocalsLabel.Size = UDim2.new(0.5, -20, 0, 10)
LocalsLabel.ZIndex = 3
LocalsLabel.Font = Enum.Font.SourceSansBold
LocalsLabel.FontSize = Enum.FontSize.Size11
LocalsLabel.Text = "Locals"
LocalsLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
LocalsLabel.TextSize = 11

UpvaluesLabel.Name = "UpvaluesLabel"
UpvaluesLabel.Parent = EditFrame
UpvaluesLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
UpvaluesLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
UpvaluesLabel.Position = UDim2.new(0.5, 10, 0, 10)
UpvaluesLabel.Size = UDim2.new(0.5, -20, 0, 10)
UpvaluesLabel.ZIndex = 3
UpvaluesLabel.Font = Enum.Font.SourceSansBold
UpvaluesLabel.FontSize = Enum.FontSize.Size11
UpvaluesLabel.Text = "Upvalues"
UpvaluesLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
UpvaluesLabel.TextSize = 11

SetUpvalueTable.Name = "SetUpvalueTable"
SetUpvalueTable.Parent = EditFrame
SetUpvalueTable.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetUpvalueTable.BorderColor3 = Color3.new(0.156863, 0.313726, 0.156863)
SetUpvalueTable.Position = UDim2.new(0.5, 150, 1, -30)
SetUpvalueTable.Size = UDim2.new(0.5, -160, 0, 20)
SetUpvalueTable.ZIndex = 3
SetUpvalueTable.Font = Enum.Font.SourceSansBold
SetUpvalueTable.FontSize = Enum.FontSize.Size14
SetUpvalueTable.Text = "SET UPVALUE TABLE"
SetUpvalueTable.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
SetUpvalueTable.TextSize = 14

Setlocal.Name = "Setlocal"
Setlocal.Parent = EditFrame
Setlocal.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Setlocal.BorderColor3 = Color3.new(0.156863, 0.313726, 0.156863)
Setlocal.Position = UDim2.new(0, 10, 1, -30)
Setlocal.Size = UDim2.new(0, 130, 0, 20)
Setlocal.ZIndex = 3
Setlocal.Font = Enum.Font.SourceSansBold
Setlocal.FontSize = Enum.FontSize.Size14
Setlocal.Text = "SET LOCALS"
Setlocal.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
Setlocal.TextSize = 14

SetLocalTable.Name = "SetLocalTable"
SetLocalTable.Parent = EditFrame
SetLocalTable.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetLocalTable.BorderColor3 = Color3.new(0.156863, 0.313726, 0.156863)
SetLocalTable.Position = UDim2.new(0, 150, 1, -30)
SetLocalTable.Size = UDim2.new(0.5, -160, 0, 20)
SetLocalTable.ZIndex = 3
SetLocalTable.Font = Enum.Font.SourceSansBold
SetLocalTable.FontSize = Enum.FontSize.Size14
SetLocalTable.Text = "SET LOCAL TABLE"
SetLocalTable.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
SetLocalTable.TextSize = 14

SourceView.Name = "SourceView"
SourceView.Parent = BG
SourceView.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SourceView.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
SourceView.Position = UDim2.new(0, 200, 0, 70)
SourceView.Size = UDim2.new(1, -210, 1, -140)
SourceView.Visible = false
SourceView.ZIndex = 2
SourceView.BottomImage = "rbxassetid://491055673"
SourceView.CanvasSize = UDim2.new(0, 0, 20, 0)
SourceView.MidImage = "rbxassetid://491055673"
SourceView.ScrollBarThickness = 0
SourceView.TopImage = "rbxassetid://491055673"

ShowEditor.Name = "ShowEditor"
ShowEditor.Parent = BG
ShowEditor.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ShowEditor.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ShowEditor.Position = UDim2.new(0, 520, 1, -30)
ShowEditor.Size = UDim2.new(0, 100, 0, 20)
ShowEditor.Font = Enum.Font.SourceSansBold
ShowEditor.FontSize = Enum.FontSize.Size14
ShowEditor.Text = "SHOW EDITOR"
ShowEditor.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ShowEditor.TextSize = 14

ShowSource.Name = "ShowSource"
ShowSource.Parent = BG
ShowSource.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ShowSource.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ShowSource.Position = UDim2.new(0, 410, 1, -30)
ShowSource.Size = UDim2.new(0, 100, 0, 20)
ShowSource.Font = Enum.Font.SourceSansBold
ShowSource.FontSize = Enum.FontSize.Size14
ShowSource.Text = "SHOW SOURCE"
ShowSource.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ShowSource.TextSize = 14

FCallEdit.Name = "FCallEdit"
FCallEdit.Parent = BG
FCallEdit.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
FCallEdit.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
FCallEdit.Position = UDim2.new(0, 200, 0, 70)
FCallEdit.Size = UDim2.new(1, -210, 1, -140)
FCallEdit.Visible = false
FCallEdit.ZIndex = 2

FCallsFrame.Name = "FCallsFrame"
FCallsFrame.Parent = FCallEdit
FCallsFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FCallsFrame.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
FCallsFrame.Position = UDim2.new(0, 10, 0, 20)
FCallsFrame.Size = UDim2.new(0.5, 0, 1, -30)
FCallsFrame.ZIndex = 2
FCallsFrame.BottomImage = "rbxassetid://491055673"
FCallsFrame.CanvasSize = UDim2.new(0, 0, 20, 0)
FCallsFrame.MidImage = "rbxassetid://491055673"
FCallsFrame.ScrollBarThickness = 0
FCallsFrame.TopImage = "rbxassetid://491055673"

Constants.Name = "Constants"
Constants.Parent = FCallEdit
Constants.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Constants.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Constants.Position = UDim2.new(0.5, 20, 0, 20)
Constants.Size = UDim2.new(0.5, -30, 1, -60)
Constants.ZIndex = 3
Constants.BottomImage = "rbxassetid://491055673"
Constants.CanvasSize = UDim2.new(0, 0, 10, 0)
Constants.MidImage = "rbxassetid://491055673"
Constants.ScrollBarThickness = 0
Constants.TopImage = "rbxassetid://491055673"

ConstantsLabel.Name = "ConstantsLabel"
ConstantsLabel.Parent = FCallEdit
ConstantsLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ConstantsLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ConstantsLabel.Position = UDim2.new(0.5, 20, 0, 10)
ConstantsLabel.Size = UDim2.new(0.5, -30, 0, 10)
ConstantsLabel.ZIndex = 3
ConstantsLabel.Font = Enum.Font.SourceSansBold
ConstantsLabel.FontSize = Enum.FontSize.Size11
ConstantsLabel.Text = "Function Constants"
ConstantsLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ConstantsLabel.TextSize = 11

FunctionLabel.Name = "FunctionLabel"
FunctionLabel.Parent = FCallEdit
FunctionLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
FunctionLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
FunctionLabel.Position = UDim2.new(0, 10, 0, 10)
FunctionLabel.Size = UDim2.new(0.5, 0, 0, 10)
FunctionLabel.ZIndex = 3
FunctionLabel.Font = Enum.Font.SourceSansBold
FunctionLabel.FontSize = Enum.FontSize.Size11
FunctionLabel.Text = "Functions"
FunctionLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FunctionLabel.TextSize = 11

SetConstants.Name = "SetConstants"
SetConstants.Parent = FCallEdit
SetConstants.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetConstants.BorderColor3 = Color3.new(0.156863, 0.313726, 0.156863)
SetConstants.Position = UDim2.new(0.5, 20, 1, -30)
SetConstants.Size = UDim2.new(0.5, -30, 0, 20)
SetConstants.ZIndex = 3
SetConstants.Font = Enum.Font.SourceSansBold
SetConstants.FontSize = Enum.FontSize.Size14
SetConstants.Text = "SET CONSTANTS"
SetConstants.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
SetConstants.TextSize = 14

InstancePath.Name = "InstancePath"
InstancePath.Parent = BG
InstancePath.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
InstancePath.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
InstancePath.Position = UDim2.new(0, 410, 1, -60)
InstancePath.Size = UDim2.new(1, -420, 0, 20)
InstancePath.ZIndex = 2
InstancePath.Font = Enum.Font.SourceSansBold
InstancePath.FontSize = Enum.FontSize.Size11
InstancePath.Text = ""
InstancePath.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
InstancePath.TextSize = 11

ScriptEnable.Name = "ScriptEnable"
ScriptEnable.Parent = BG
ScriptEnable.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ScriptEnable.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ScriptEnable.Position = UDim2.new(0, 10, 0, 260)
ScriptEnable.Selectable = false
ScriptEnable.Size = UDim2.new(0, 180, 1, -430)
ScriptEnable.ZIndex = 2
ScriptEnable.BottomImage = "rbxassetid://491055673"
ScriptEnable.MidImage = "rbxassetid://491055673"
ScriptEnable.ScrollBarThickness = 0
ScriptEnable.TopImage = "rbxassetid://491055673"

ScriptLogLabel.Name = "ScriptLogLabel"
ScriptLogLabel.Parent = BG
ScriptLogLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ScriptLogLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ScriptLogLabel.Position = UDim2.new(0, 10, 0, 70)
ScriptLogLabel.Size = UDim2.new(0, 180, 0, 10)
ScriptLogLabel.ZIndex = 3
ScriptLogLabel.Font = Enum.Font.SourceSansBold
ScriptLogLabel.FontSize = Enum.FontSize.Size11
ScriptLogLabel.Text = "Script Log"
ScriptLogLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ScriptLogLabel.TextSize = 11

GameScriptsLabel.Name = "GameScriptsLabel"
GameScriptsLabel.Parent = BG
GameScriptsLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
GameScriptsLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
GameScriptsLabel.Position = UDim2.new(0, 10, 0, 250)
GameScriptsLabel.Size = UDim2.new(0, 180, 0, 10)
GameScriptsLabel.ZIndex = 3
GameScriptsLabel.Font = Enum.Font.SourceSansBold
GameScriptsLabel.FontSize = Enum.FontSize.Size11
GameScriptsLabel.Text = "Game Scripts"
GameScriptsLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
GameScriptsLabel.TextSize = 11

MethodsLabel.Name = "MethodsLabel"
MethodsLabel.Parent = BG
MethodsLabel.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
MethodsLabel.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
MethodsLabel.Position = UDim2.new(0, 10, 1, -160)
MethodsLabel.Size = UDim2.new(0, 180, 0, 10)
MethodsLabel.ZIndex = 3
MethodsLabel.Font = Enum.Font.SourceSansBold
MethodsLabel.FontSize = Enum.FontSize.Size11
MethodsLabel.Text = "Methods"
MethodsLabel.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
MethodsLabel.TextSize = 11

CallerName.Name = "CallerName"
CallerName.Parent = BG
CallerName.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
CallerName.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
CallerName.Position = UDim2.new(0, 630, 1, -30)
CallerName.Selectable = true
CallerName.Size = UDim2.new(0, 170, 0, 20)
CallerName.ZIndex = 2
CallerName.Font = Enum.Font.SourceSansBold
CallerName.FontSize = Enum.FontSize.Size11
CallerName.Text = ""
CallerName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
CallerName.TextSize = 11

Ico.Name = "Ico"
Ico.Parent = CallerName
Ico.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Ico.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Ico.Selectable = true
Ico.Size = UDim2.new(0, 20, 1, 0)
Ico.ZIndex = 4
Ico.Image = "rbxassetid://99340858"

CallerMethodName.Name = "CallerMethodName"
CallerMethodName.Parent = BG
CallerMethodName.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
CallerMethodName.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
CallerMethodName.Position = UDim2.new(0, 810, 1, -30)
CallerMethodName.Selectable = true
CallerMethodName.Size = UDim2.new(1, -820, 0, 20)
CallerMethodName.ZIndex = 2
CallerMethodName.Font = Enum.Font.SourceSansBold
CallerMethodName.FontSize = Enum.FontSize.Size11
CallerMethodName.Text = ""
CallerMethodName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
CallerMethodName.TextSize = 11

Ico_2.Name = "Ico"
Ico_2.Parent = CallerMethodName
Ico_2.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Ico_2.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Ico_2.Selectable = true
Ico_2.Size = UDim2.new(0, 20, 1, 0)
Ico_2.ZIndex = 4
Ico_2.Image = "rbxassetid://1746331597"

SearchScript.Name = "SearchScript"
SearchScript.Parent = BG
SearchScript.BackgroundColor3 = Color3.new(0.0980392, 0.196078, 0.0980392)
SearchScript.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
SearchScript.Position = UDim2.new(0, 10, 0, 220)
SearchScript.Size = UDim2.new(0, 180, 0, 20)
SearchScript.ZIndex = 3
SearchScript.Font = Enum.Font.SourceSansBold
SearchScript.FontSize = Enum.FontSize.Size14
SearchScript.MultiLine = true
SearchScript.ShowNativeInput = false
SearchScript.Text = ""
SearchScript.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
SearchScript.TextSize = 14

Toolbox.Name = "Toolbox"
Toolbox.Parent = EnvEdit
Toolbox.BackgroundColor3 = Color3.new(1, 1, 1)
Toolbox.Size = UDim2.new(0, 100, 0, 100)
Toolbox.Visible = false

Button.Name = "Button"
Button.Parent = Toolbox
Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Button.BorderColor3 = Color3.new(0.176471, 0.0784314, 0.0784314)
Button.Position = UDim2.new(1, -120, 0, 0)
Button.Size = UDim2.new(0, 120, 1, 0)
Button.ZIndex = 5
Button.Font = Enum.Font.SourceSansBold
Button.FontSize = Enum.FontSize.Size11
Button.TextColor3 = Color3.new(0.627451, 0.313726, 0.313726)
Button.TextSize = 11

Edit.Name = "Edit"
Edit.Parent = Toolbox
Edit.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Edit.BorderColor3 = Color3.new(0.0784314, 0.176471, 0.0784314)
Edit.Position = UDim2.new(1, -120, 0, 0)
Edit.Size = UDim2.new(0, 120, 1, 0)
Edit.ZIndex = 5
Edit.Font = Enum.Font.SourceSansBold
Edit.FontSize = Enum.FontSize.Size11
Edit.ShowNativeInput = false
Edit.Text = "asdasdasd"
Edit.TextColor3 = Color3.new(0.313726, 0.627451, 0.313726)
Edit.TextSize = 11
Edit.TextWrapped = true

UnAssignable.Name = "UnAssignable"
UnAssignable.Parent = Toolbox
UnAssignable.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
UnAssignable.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UnAssignable.Position = UDim2.new(1, -120, 0, 0)
UnAssignable.Size = UDim2.new(0, 120, 1, 0)
UnAssignable.ZIndex = 5
UnAssignable.Font = Enum.Font.SourceSansBold
UnAssignable.FontSize = Enum.FontSize.Size11
UnAssignable.Text = ""
UnAssignable.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
UnAssignable.TextSize = 11
UnAssignable.TextWrapped = true

SBTN.Name = "SBTN"
SBTN.Parent = Toolbox
SBTN.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
SBTN.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
SBTN.Position = UDim2.new(0, 10, 0, 10)
SBTN.Size = UDim2.new(1, -25, 0, 20)
SBTN.ZIndex = 3
SBTN.Font = Enum.Font.SourceSansBold
SBTN.FontSize = Enum.FontSize.Size14
SBTN.Text = "SCRIPT"
SBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
SBTN.TextSize = 14

Ico_3.Name = "Ico"
Ico_3.Parent = SBTN
Ico_3.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Ico_3.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Ico_3.Selectable = true
Ico_3.Size = UDim2.new(0, 20, 1, 0)
Ico_3.ZIndex = 4
Ico_3.Image = "rbxassetid://99340858"

SourceLine.Name = "SourceLine"
SourceLine.Parent = Toolbox
SourceLine.BackgroundColor3 = Color3.new(1, 1, 1)
SourceLine.BackgroundTransparency = 1
SourceLine.Position = UDim2.new(0, 50, 0, 0)
SourceLine.Size = UDim2.new(1, -50, 0, 11)
SourceLine.ZIndex = 3

Source.Name = "Source"
Source.Parent = SourceLine
Source.BackgroundColor3 = Color3.new(1, 1, 1)
Source.BackgroundTransparency = 1
Source.Size = UDim2.new(1, 0, 1, 0)
Source.ZIndex = 3
Source.Font = Enum.Font.Code
Source.FontSize = Enum.FontSize.Size18
Source.Text = ""
Source.TextColor3 = Color3.new(1, 1, 1)
Source.TextSize = 15
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Globals.Name = "Globals"
Globals.Parent = SourceLine
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Size = UDim2.new(1, 0, 1, 0)
Globals.ZIndex = 3
Globals.Font = Enum.Font.Code
Globals.FontSize = Enum.FontSize.Size18
Globals.Text = ""
Globals.TextColor3 = Color3.new(0.313726, 0.627451, 0.313726)
Globals.TextSize = 15
Globals.TextXAlignment = Enum.TextXAlignment.Left
Globals.TextYAlignment = Enum.TextYAlignment.Top

Strings.Name = "Strings"
Strings.Parent = SourceLine
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Size = UDim2.new(1, 0, 1, 0)
Strings.ZIndex = 3
Strings.Font = Enum.Font.Code
Strings.FontSize = Enum.FontSize.Size18
Strings.Text = ""
Strings.TextColor3 = Color3.new(1, 0.8, 0)
Strings.TextSize = 15
Strings.TextXAlignment = Enum.TextXAlignment.Left
Strings.TextYAlignment = Enum.TextYAlignment.Top

Keywords.Name = "Keywords"
Keywords.Parent = SourceLine
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Size = UDim2.new(1, 0, 1, 0)
Keywords.ZIndex = 3
Keywords.Font = Enum.Font.Code
Keywords.FontSize = Enum.FontSize.Size18
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.627451, 0.313726, 0.313726)
Keywords.TextSize = 15
Keywords.TextXAlignment = Enum.TextXAlignment.Left
Keywords.TextYAlignment = Enum.TextYAlignment.Top

Tokens.Name = "Tokens"
Tokens.Parent = SourceLine
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Size = UDim2.new(1, 0, 1, 0)
Tokens.ZIndex = 3
Tokens.Font = Enum.Font.Code
Tokens.FontSize = Enum.FontSize.Size18
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(0.705882, 0.705882, 0.705882)
Tokens.TextSize = 15
Tokens.TextXAlignment = Enum.TextXAlignment.Left
Tokens.TextYAlignment = Enum.TextYAlignment.Top

Comments.Name = "Comments"
Comments.Parent = SourceLine
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(1, 0, 1, 0)
Comments.ZIndex = 3
Comments.Font = Enum.Font.Code
Comments.FontSize = Enum.FontSize.Size18
Comments.Text = ""
Comments.TextColor3 = Color3.new(0.0156863, 1, 0)
Comments.TextSize = 15
Comments.TextXAlignment = Enum.TextXAlignment.Left
Comments.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = Toolbox
Lines.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Lines.BorderSizePixel = 0
Lines.Size = UDim2.new(0, 40, 1, 0)
Lines.ZIndex = 3
Lines.Font = Enum.Font.SourceSansBold
Lines.FontSize = Enum.FontSize.Size18
Lines.Text = ""
Lines.TextColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Lines.TextSize = 15
Lines.TextYAlignment = Enum.TextYAlignment.Top

Field.Name = "Field"
Field.Parent = Toolbox
Field.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Field.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Field.Position = UDim2.new(0, 10, 0, 10)
Field.Size = UDim2.new(1, -20, 0, 20)
Field.ZIndex = 4

FieldName.Name = "FieldName"
FieldName.Parent = Field
FieldName.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
FieldName.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
FieldName.Size = UDim2.new(0, 100, 1, 0)
FieldName.ZIndex = 5
FieldName.Font = Enum.Font.SourceSansBold
FieldName.FontSize = Enum.FontSize.Size11
FieldName.Text = ""
FieldName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FieldName.TextSize = 11
FieldName.TextWrapped = true

GetInstPath.Name = "GetInstPath"
GetInstPath.Parent = Field
GetInstPath.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
GetInstPath.BorderColor3 = Color3.new(0.156863, 0.313726, 0.156863)
GetInstPath.Position = UDim2.new(0, 110, 0, 0)
GetInstPath.Size = UDim2.new(0, 100, 0, 20)
GetInstPath.Visible = false
GetInstPath.ZIndex = 5
GetInstPath.Font = Enum.Font.SourceSansBold
GetInstPath.FontSize = Enum.FontSize.Size14
GetInstPath.Text = "PATH"
GetInstPath.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
GetInstPath.TextSize = 14

ScriptButton.Name = "ScriptButton"
ScriptButton.Parent = Toolbox
ScriptButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ScriptButton.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ScriptButton.Position = UDim2.new(0, 10, 0, 10)
ScriptButton.Size = UDim2.new(1, -25, 0, 20)
ScriptButton.ZIndex = 3
ScriptButton.Font = Enum.Font.SourceSansBold
ScriptButton.FontSize = Enum.FontSize.Size14
ScriptButton.Text = ""
ScriptButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ScriptButton.TextSize = 14

Ico_4.Name = "Ico"
Ico_4.Parent = ScriptButton
Ico_4.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Ico_4.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Ico_4.Selectable = true
Ico_4.Size = UDim2.new(0, 20, 1, 0)
Ico_4.ZIndex = 4
Ico_4.Image = "rbxassetid://99340858"

Status.Name = "Status"
Status.Parent = ScriptButton
Status.BackgroundColor3 = Color3.new(0.54902, 0.137255, 0.137255)
Status.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Status.Position = UDim2.new(1, -20, 0, 0)
Status.Selectable = true
Status.Size = UDim2.new(0, 20, 1, 0)
Status.ZIndex = 4

FCallField.Name = "FCallField"
FCallField.Parent = Toolbox
FCallField.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FCallField.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
FCallField.Position = UDim2.new(0, 10, 0, 10)
FCallField.Size = UDim2.new(1, -20, 0, 20)
FCallField.ZIndex = 3

Function.Name = "Function"
Function.Parent = FCallField
Function.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Function.BorderSizePixel = 0
Function.Size = UDim2.new(0, 140, 1, 0)
Function.ZIndex = 4

Ico_5.Name = "Ico"
Ico_5.Parent = Function
Ico_5.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Ico_5.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Ico_5.Selectable = true
Ico_5.Size = UDim2.new(0, 20, 1, 0)
Ico_5.ZIndex = 4
Ico_5.Image = "rbxassetid://413363737"

FuncName.Name = "FuncName"
FuncName.Parent = Function
FuncName.BackgroundColor3 = Color3.new(1, 1, 1)
FuncName.BackgroundTransparency = 1
FuncName.Position = UDim2.new(0, 20, 0, 0)
FuncName.Size = UDim2.new(1, -20, 1, 0)
FuncName.ZIndex = 5
FuncName.Font = Enum.Font.SourceSansBold
FuncName.FontSize = Enum.FontSize.Size14
FuncName.Text = ""
FuncName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FuncName.TextSize = 14
FuncName.TextWrapped = true

EditVars.Name = "EditVars"
EditVars.Parent = FCallField
EditVars.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
EditVars.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
EditVars.BorderSizePixel = 0
EditVars.Position = UDim2.new(0, 150, 0, 0)
EditVars.Size = UDim2.new(0, 40, 0, 20)
EditVars.ZIndex = 4
EditVars.Font = Enum.Font.SourceSansBold
EditVars.FontSize = Enum.FontSize.Size14
EditVars.Text = "EDIT"
EditVars.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
EditVars.TextSize = 14

CallFunc.Name = "CallFunc"
CallFunc.Parent = FCallField
CallFunc.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
CallFunc.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
CallFunc.BorderSizePixel = 0
CallFunc.Position = UDim2.new(1, -50, 0, 0)
CallFunc.Size = UDim2.new(0, 40, 0, 20)
CallFunc.ZIndex = 4
CallFunc.AutoButtonColor = false
CallFunc.Selected = true
CallFunc.Font = Enum.Font.SourceSansBold
CallFunc.FontSize = Enum.FontSize.Size14
CallFunc.Text = "CALL"
CallFunc.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
CallFunc.TextSize = 14

RemoveFunc.Name = "RemoveFunc"
RemoveFunc.Parent = FCallField
RemoveFunc.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
RemoveFunc.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
RemoveFunc.BorderSizePixel = 0
RemoveFunc.Position = UDim2.new(0, 200, 0, 0)
RemoveFunc.Size = UDim2.new(0, 40, 0, 20)
RemoveFunc.ZIndex = 4
RemoveFunc.Font = Enum.Font.SourceSansBold
RemoveFunc.FontSize = Enum.FontSize.Size14
RemoveFunc.Text = "DEL"
RemoveFunc.TextColor3 = Color3.new(0.784314, 0.392157, 0.392157)
RemoveFunc.TextSize = 14

DecompFunc.Name = "DecompFunc"
DecompFunc.Parent = FCallField
DecompFunc.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
DecompFunc.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
DecompFunc.BorderSizePixel = 0
DecompFunc.Position = UDim2.new(0, 250, 0, 0)
DecompFunc.Size = UDim2.new(0, 40, 0, 20)
DecompFunc.ZIndex = 4
DecompFunc.AutoButtonColor = false
DecompFunc.Font = Enum.Font.SourceSansBold
DecompFunc.FontSize = Enum.FontSize.Size14
DecompFunc.Text = "DEC"
DecompFunc.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
DecompFunc.TextSize = 14

LoadFunc.Name = "LoadFunc"
LoadFunc.Parent = FCallField
LoadFunc.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
LoadFunc.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
LoadFunc.BorderSizePixel = 0
LoadFunc.Position = UDim2.new(0, 300, 0, 0)
LoadFunc.Size = UDim2.new(0, 40, 0, 20)
LoadFunc.ZIndex = 4
LoadFunc.AutoButtonColor = false
LoadFunc.Selected = true
LoadFunc.Font = Enum.Font.SourceSansBold
LoadFunc.FontSize = Enum.FontSize.Size14
LoadFunc.Text = "LOAD"
LoadFunc.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
LoadFunc.TextSize = 14

ArgLoadstring.Name = "ArgLoadstring"
ArgLoadstring.Parent = EnvEdit
ArgLoadstring.Active = true
ArgLoadstring.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ArgLoadstring.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ArgLoadstring.Draggable = true
ArgLoadstring.Position = UDim2.new(0, 20, 0, 20)
ArgLoadstring.Size = UDim2.new(0.5, -50, 0, 500)
ArgLoadstring.Visible = false
ArgLoadstring.ZIndex = 5

Top_2.Name = "Top"
Top_2.Parent = ArgLoadstring
Top_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Top_2.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Top_2.Size = UDim2.new(1, 0, 0, 20)
Top_2.ZIndex = 5

Title_2.Name = "Title"
Title_2.Parent = Top_2
Title_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.5, -80, 0, 0)
Title_2.Size = UDim2.new(0, 160, 1, 0)
Title_2.ZIndex = 6
Title_2.Font = Enum.Font.SourceSansBold
Title_2.FontSize = Enum.FontSize.Size14
Title_2.Text = "Data Editor"
Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_2.TextSize = 14

Close.Name = "Close"
Close.Parent = Top_2
Close.BackgroundColor3 = Color3.new(0.235294, 0.117647, 0.117647)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(1, -50, 0, 0)
Close.Size = UDim2.new(0, 50, 1, 0)
Close.ZIndex = 6
Close.Font = Enum.Font.SourceSansBold
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Close.TextSize = 14

ScriptInput.Name = "ScriptInput"
ScriptInput.Parent = ArgLoadstring
ScriptInput.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ScriptInput.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ScriptInput.Position = UDim2.new(0, 10, 0, 30)
ScriptInput.Size = UDim2.new(1, -20, 1, -70)
ScriptInput.ZIndex = 6
ScriptInput.BottomImage = "rbxassetid://491055673"
ScriptInput.CanvasSize = UDim2.new(0, 0, 20, 0)
ScriptInput.MidImage = "rbxassetid://491055673"
ScriptInput.ScrollBarThickness = 0
ScriptInput.TopImage = "rbxassetid://491055673"

ScriptBox.Name = "ScriptBox"
ScriptBox.Parent = ScriptInput
ScriptBox.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptBox.BackgroundTransparency = 1
ScriptBox.Size = UDim2.new(1, 0, 1, 0)
ScriptBox.ZIndex = 7
ScriptBox.Font = Enum.Font.Code
ScriptBox.FontSize = Enum.FontSize.Size18
ScriptBox.Text = ""
ScriptBox.TextColor3 = Color3.new(1, 1, 1)
ScriptBox.TextSize = 15
ScriptBox.TextXAlignment = Enum.TextXAlignment.Left
ScriptBox.TextYAlignment = Enum.TextYAlignment.Top

SetParameters.Name = "SetParameters"
SetParameters.Parent = ArgLoadstring
SetParameters.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetParameters.BorderColor3 = Color3.new(0.137255, 0.27451, 0.137255)
SetParameters.Position = UDim2.new(0, 10, 1, -30)
SetParameters.Size = UDim2.new(1, -20, 0, 20)
SetParameters.ZIndex = 6
SetParameters.Font = Enum.Font.SourceSansBold
SetParameters.FontSize = Enum.FontSize.Size14
SetParameters.Text = "SET PARAMETERS"
SetParameters.TextColor3 = Color3.new(0.392157, 0.784314, 0.392157)
SetParameters.TextSize = 14

-- UI Functions

local log_enabled = false

local enable_log = function()
    EnableLog.Text = (EnableLog.Text == "ENABLE LOG" and "DISABLE LOG" or "ENABLE LOG")
    log_enabled = (EnableLog.Text == "DISABLE LOG")
end

local update_list = function(list)
    local objects = list:GetChildren()
    for i, v in next, objects do
        v.Parent = list 
        v.Position = UDim2.new(0, 12.5, 0, (-20 + i * 30))
        list.CanvasSize = UDim2.new(0, 0, 0, 50 + i * 20)
    end
end

local add_method = function()
    local s = SBTN:Clone()
    s.Ico.Image = "rbxassetid://1746331597"
    s.Parent = Methods 
    s.Text = MethodName.Text 
    s.Name = MethodName.Text
    s.Position = UDim2.new(0, 12.5, 0, (-20 + #Methods:GetChildren() * 30))
    MethodName.Text = "" 

    s.MouseButton1Down:Connect(function()
        s:Remove()
        update_list(Methods)
    end)
end

local Highlight = function(string, keywords)
    local K = {}
    local S = string
    local Token =
    {
        ["="] = true,
        ["."] = true,
        [","] = true,
        ["("] = true,
        [")"] = true,
        ["["] = true,
        ["]"] = true,
        ["{"] = true,
        ["}"] = true,
        [":"] = true,
        ["*"] = true,
        ["/"] = true,
        ["+"] = true,
        ["-"] = true,
        ["%"] = true,
		[";"] = true,
		["~"] = true
    }
    for i, v in pairs(keywords) do
        K[v] = true
    end
    S = S:gsub(".", function(c)
        if Token[c] ~= nil then
            return "\32"
        else
            return c
        end
    end)
    S = S:gsub("%S+", function(c)
        if K[c] ~= nil then
            return c
        else
            return (" "):rep(#c)
        end
    end)
  
    return S
end

local hTokens = function(string)
    local Token =
    {
        ["="] = true,
        ["."] = true,
        [","] = true,
        ["("] = true,
        [")"] = true,
        ["["] = true,
        ["]"] = true,
        ["{"] = true,
        ["}"] = true,
        [":"] = true,
        ["*"] = true,
        ["/"] = true,
        ["+"] = true,
        ["-"] = true,
        ["%"] = true,
		[";"] = true,
		["~"] = true
    }
    local A = ""
    string:gsub(".", function(c)
        if Token[c] ~= nil then
            A = A .. c
        elseif c == "\n" then
            A = A .. "\n"
		elseif c == "\t" then
			A = A .. "\t"
        else
            A = A .. "\32"
        end
    end)
  
    return A
end

local strings = function(string)
    local highlight = ""
    local quote = false
    string:gsub(".", function(c)
        if quote == false and c == "\"" then
            quote = true
        elseif quote == true and c == "\"" then
            quote = false
        end
        if quote == false and c == "\"" then
            highlight = highlight .. "\""
        elseif c == "\n" then
            highlight = highlight .. "\n"
		elseif c == "\t" then
		    highlight = highlight .. "\t"
        elseif quote == true then
            highlight = highlight .. c
        elseif quote == false then
            highlight = highlight .. "\32"
        end
    end)
  
    return highlight
end

local comments = function(string)
    local ret = ""
    string:gsub("[^\r\n]+", function(c)
        local comm = false
        local i = 0
        c:gsub(".", function(n)
            i = i + 1
            if c:sub(i, i + 1) == "--" then
                comm = true
            end
            if comm == true then
                ret = ret .. n
            else
                ret = ret .. "\32"
            end
        end)
        ret = ret
    end)
    
    return ret
end

local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}

local highlight_source = function(line)
	line.Source.Text = line.Source.Text:gsub("\13", "")
	local s = line.Source.Text
	line.Keywords.Text = Highlight(s, lua_keywords)
	line.Globals.Text = Highlight(s, global_env)
    line.Strings.Text = strings(s)
    line.Tokens.Text = hTokens(s)
    line.Comments.Text = comments(s)
end

local create_tkey = function(t0, t1)
    local s = ""
    local ret = ""

    for i, v in next, t0 do 
        s = s .. tostring(i) .. " "
    end
    for i, v in next, t1 do 
        s = s .. tostring(i) .. " "
    end

    s:gsub("%S+", function(c)
        ret = ret .. c:sub(1, 3)
    end)

    return ret
end

local script_envs = {}
local script_tables = {}
local script_functions = {}
local current_env
local current_script
local current_table
local current_function

local clearscripts = function()
    Scripts:ClearAllChildren()
    Locals:ClearAllChildren() 
    Upvalues:ClearAllChildren()
    script_envs = {}
    script_tables = {}

    current_env = ""
end

local dump_source = function()
    EditFrame.Visible = false 
    SourceView.Visible = true
    FCallEdit.Visible = false
    SourceView:ClearAllChildren()
    local lines = 0
    local linec = Lines:Clone()

    linec.Parent = SourceView
    decompile(current_env.script):gsub("[^\n]+", function(c)
        local l = SourceLine:Clone()
        local tabs = 0
        c:gsub("%\t", function() tabs = tabs + 1 end)
        lines = lines + 1
        linec.Text = linec.Text .. tostring(lines) .. "\n"
        l.Source.Text = c
        l.Parent = SourceView
        l.Position = UDim2.new(0, 50 + tabs * (15 * 2), 0, -30 + #SourceView:GetChildren() * 15)
        highlight_source(l)
    end)
end

local dump_function = function(callback)
    EditFrame.Visible = false 
    SourceView.Visible = true
    FCallEdit.Visible = false
    SourceView:ClearAllChildren()
    local lines = 0
    local linec = Lines:Clone()

    linec.Parent = SourceView
    decompile(callback):gsub("[^\n]+", function(c)
        local l = SourceLine:Clone()
        local tabs = 0
        c:gsub("%\t", function() tabs = tabs + 1 end)
        lines = lines + 1
        linec.Text = linec.Text .. tostring(lines) .. "\n"
        l.Source.Text = c
        l.Parent = SourceView
        l.Position = UDim2.new(0, 50 + tabs * (15 * 2), 0, -30 + #SourceView:GetChildren() * 15)
        highlight_source(l)
    end)
end

local show_source = function()
    SourceView.Visible = true
    EditFrame.Visible = false
    FCallEdit.Visible = false
end

local show_edit = function()
    SourceView.Visible = false
    EditFrame.Visible = true
    FCallEdit.Visible = false
end

local onclick_fullscreen = function()
	BG.Draggable = BG.Size == UDim2.new(1, 0, 1, 40)
    if (BG.Size == UDim2.new(0.5, 250, 0.8, 0)) then
        game.CoreGui.RobloxGui.Enabled = false
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		BG:TweenSizeAndPosition(UDim2.new(1, 0, 1, 40), UDim2.new(0, 0, 0, -40), "Out", "Quint", 0.4)
	else
        BG.Draggable = true
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
        game.CoreGui.RobloxGui.Enabled = true
        BG:TweenSizeAndPosition(UDim2.new(0.5, 250, 0.8, 0), UDim2.new(0.5, -441, 0, 29), "Out", "Quint", 0.4)
		wait(0.1)
		for i, v in next, BG:GetChildren() do
			v.Visible = true
		end
		FCallEdit.Visible = false 	
		SourceView.Visible = false 
	end
end

local onclick_fold = function()
	if (BG.Size == UDim2.new(0.5, 250, 0.8, 0)) then 
		BG:TweenSize(UDim2.new(0, 400, 0, 20), "Out", "Quint", 0.4)
		for i, v in next, BG:GetChildren() do
			if (v ~= Top) then v.Visible = false end
		end
	else 
		BG:TweenSize(UDim2.new(0.5, 250, 0.8, 0), "Out", "Quint", 0.4)
		wait(0.1)
		for i, v in next, BG:GetChildren() do
			v.Visible = true
		end
		FCallEdit.Visible = false 	
		SourceView.Visible = false 
	end
end

local onclick_close = function()
    ArgLoadstring.Visible = false
end

local open_funcs = function()
    EditFrame.Visible = false
    SourceView.Visible = false 
    FCallEdit.Visible = true
end

local is_instance = function(v0)
    return (type(v0) == "userdata" and getrawmetatable(v0).__type == "Object")
end

local get_type = function(v0)
    if (is_instance(v0)) then return "Edit" end
    local types = 
    {
        boolean = "UnAssignable",
        number = "Edit",
        string = "Edit",
        userdata = "UnAssignable",
        ["function"] = "Button",
        table = "Button",
        thread = "UnAssignable",
    }

    return types[type(v0)]
end

local parse_var = function(v0)
    local e, v1 = pcall(function()
        return loadstring("return " .. v0)()
    end)
    if (e == false or v1 == nil) then 
        return v0
    else
        return v1
    end
end

local HasSpecial = function(string)
    return (string:match("%c") or string:match("%s") or string:match("%p")) ~= nil
end

local GetPath = function(Instance)
	local Obj = Instance
	local string = {}
	local temp = {}
	local error = false
	
	while Obj ~= game do
		if Obj == nil then
			error = true
			break
		end
		table.insert(temp, Obj.Parent == game and Obj.ClassName or tostring(Obj))
		Obj = Obj.Parent
	end
	
	table.insert(string, "game:GetService(\"" .. temp[#temp] .. "\")")
	
	for i = #temp - 1, 1, -1 do
		table.insert(string, HasSpecial(temp[i]) and "[\"" .. temp[i] .. "\"]" or "." .. temp[i])
	end

	return (error and "Path contained an invalid instance" or table.concat(string, ""))
end


local update_locals = function()
    for i, v in next, Locals:GetChildren() do
        if (v:FindFirstChild("Edit")) then
            current_env.locals(parse_var(v.FieldName.Text), parse_var(v.Edit.Text))
        end
    end
end

local update_upvalues = function()
    for i, v in next, Upvalues:GetChildren() do
        if (v:FindFirstChild("Edit")) then
            current_env.upvalues(parse_var(v.FieldName.Text), parse_var(v.Edit.Text))
        end
    end
end

local set_local_table = function()
    for i, v in next, Locals:GetChildren() do 
        if (v:FindFirstChild("Edit")) then
            current_table.table[parse_var(v.FieldName.Text)] = parse_var(v.Edit.Text)
        end
    end
    _G.load_data(Locals, current_env.locals)
end

local set_upvalue_table = function()
    for i, v in next, Upvalues:GetChildren() do 
        if (v:FindFirstChild("Edit")) then
            current_table.table[parse_var(v.FieldName.Text)] = parse_var(v.Edit.Text)
        end
    end
    _G.load_data(Upvalues, current_env.upvalues)
end

local setconstants = function()
    for i, v in next, Constants:GetChildren() do
        debug.setconstant(current_function.callback, tonumber(v.FieldName.Text), parse_var(v.Edit.Text))
    end
end

local search_script = function()
    local n = 0
    for i, v in next, ScriptEnable:GetChildren() do
        v.Visible = (SearchScript.Text == "" and true or v.Name:lower():match(SearchScript.Text:lower()))
        n = n + (v.Visible and 1 or 0)
        v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
    end
end

-- UI Connections

AddMethod.MouseButton1Down:Connect(add_method)
EnableLog.MouseButton1Down:Connect(enable_log)
ClearScripts.MouseButton1Down:Connect(clearscripts)
ShowEditor.MouseButton1Down:Connect(show_edit)
ShowSource.MouseButton1Down:Connect(show_source)
Decompile.MouseButton1Down:Connect(dump_source)
Fullscreen.MouseButton1Down:Connect(onclick_fullscreen)
FCalls.MouseButton1Down:Connect(open_funcs)
Setlocal.MouseButton1Down:Connect(update_locals)
SetLocalTable.MouseButton1Down:Connect(set_local_table)
SetUpvalueTable.MouseButton1Down:Connect(set_upvalue_table)
Fold.MouseButton1Down:Connect(onclick_fold)
Close.MouseButton1Down:Connect(onclick_close)
SetConstants.MouseButton1Down:Connect(setconstants)
Setupval.MouseButton1Down:Connect(update_upvalues)
SearchScript.Changed:Connect(search_script)

-- Main Backend 

_G.setindex = function(t, f, n)
    for i, v in next, t do
        if (t[f]) then
            t[f] = n 
            break
        end
        if (type(v) == "table") then
            _G.setindex(v, f, n)
        end
    end
end

_G.getindex = function(t, f)
    for i, v in next, t do
        if (i == f) then
            return v
        end
        if (type(v) == "table") then
            return _G.getindex(v, f)
        end
    end
end

_G.setvalue = function(t, f, n)
    for i, v in next, t do
        if (v == f) then
            t[i] = n
            break
        end
        if (type(v) == "table") then
            _G.setvalue(v, f, n)
        end
    end
end

_G.getvalue = function(t, f)
    for i, v in next, t do
        if (v == f) then
            return v
        end
        if (type(v) == "table") then
            return _G.getvalue(v, f)
        end
    end
end

local game_meta = getrawmetatable(game) make_writeable(game_meta)
local b_namecall = game_meta.__namecall

local fnd = function(v0, v1)
    return assert(game.FindFirstChild)(v0, v1)
end

local load_function = function(callback)
    local cdata = script_functions[tostring(callback)]

    local f = FCallField:Clone()
    f.Parent = FCallsFrame
    f.Name = cdata.name
    f.Function.FuncName.Text = cdata.name
    f.Position = UDim2.new(0, 10, 0, -20 + #FCallsFrame:GetChildren() * 30)
    f.EditVars.MouseButton1Down:Connect(function()
        ArgLoadstring.Visible = true
        current_function = cdata
    end)
    f.CallFunc.MouseButton1Down:Connect(function()
        cdata.callback(unpack(cdata.arguments))
    end)
    f.DecompFunc.MouseButton1Down:Connect(function()
        dump_function(callback)
    end)
    f.RemoveFunc.MouseButton1Down:Connect(function()
        script_functions[tostring(callback)] = nil 
        f:Remove() 
        update_list(FCallsFrame) 
    end)
    f.LoadFunc.MouseButton1Down:Connect(function()
        current_function = cdata
        _G.load_const(debug.getconstants(cdata.callback))
    end)
end

_G.load_data = function(par, t)
    par:ClearAllChildren()
    for i, v in next, t do 
        local f = Field:Clone()
        local main = Toolbox[get_type(v)]:Clone()
        main.Parent = f
        f.Parent = par
        f.Position = UDim2.new(0, 10, 0, -20 + #par:GetChildren() * 30)
        f.FieldName.Text = i
        main.Text = tostring(v)
        if (type(v) == "boolean") then
            f.GetInstPath.Visible = true 
            f.GetInstPath.Text = "><"
            main.Name = "Edit"
            f.GetInstPath.MouseButton1Down:Connect(function()
                main.Text = tostring(not (main.Text == "false" and false or main.Text == "true" and true))
            end)
        end
        if (is_instance(v)) then
            f.GetInstPath.Visible = true 
            f.GetInstPath.MouseButton1Down:Connect(function()
                InstancePath.Text = GetPath(v)
            end)
        end
        if (type(v) == "table") then
            main.MouseButton1Down:Connect(function()
                current_table = {name = i, table = v}
                _G.load_data(par, v)
            end) 
        end
        if (type(v) == "function") then
            script_functions[tostring(v)] = 
            {
                name = i,
                callargs = {},
                callback = v,
            }
            if (fnd(FCallsFrame, i) == nil) then 
                load_function(v)
            end
            main.MouseButton1Down:Connect(open_funcs)
        end
        wait()
    end
end

_G.load_const = function(const)
    Constants:ClearAllChildren()
    for i, v in next, const do 
        local f = Field:Clone()
        local main = Toolbox[get_type(v)]:Clone()
        main.Parent = f
        f.Parent = Constants
        f.Position = UDim2.new(0, 10, 0, -20 + #Constants:GetChildren() * 30)
        main.Text = tostring(v)
        f.FieldName.Text = i
        f.GetInstPath.Visible = true 
        f.GetInstPath.Text = "DEL" 
        f.GetInstPath.MouseButton1Down:Connect(function()
            f:Remove()
            update_list(Constants)
        end)
        wait()
    end
end

local add_caller = function(data)
    script_envs[data.env_id] = data

    local s = SBTN:Clone() 
    s.Parent = Scripts 
    s.Position = UDim2.new(0, 10, 0, -20 + #Scripts:GetChildren() * 30)
    s.Name = data.env_id
    s.Text = data.script.Name
    s.MouseButton1Down:Connect(function()
        current_env = data
        CallerMethodName.Text = data.method
        CallerName.Text = data.script.Name

        pcall(function()
            spawn(function() _G.load_data(Locals, data.locals) end)
            _G.load_data(Upvalues, data.upvalues)
        end)
    end)
end

_G.oof = function(c)
    for i, v in next, c:GetChildren() do
        v.BorderSizePixel = 0 
        _G.oof(v)
    end
end

_G.get_scripts = function(base)
    local cr = function(script)
        local s = ScriptButton:Clone() 
        s.Parent = ScriptEnable
        s.Name = script.Name
        s.Position = UDim2.new(0, 10, 0, -20 + #ScriptEnable:GetChildren() * 30)
        s.Text = script.Name
        s.MouseButton1Down:Connect(function()
            s.Status.BackgroundColor3 = (s.Status.BackgroundColor3 == Color3.fromRGB(140, 35, 35) and Color3.fromRGB(35, 140, 35) or Color3.fromRGB(140, 35, 35))
        end)
    end
    for i, v in next, base:GetChildren() do 
        if ((v:IsA("LocalScript") or v:IsA("ModuleScript")) and fnd(ScriptEnable, v.Name) == nil) then 
            cr(v)
        end
        _G.get_scripts(v)
    end
end

_G.get_scripts(game)
_G.oof(EnvEdit)

local hook_namecall = function(...)
    if (log_enabled) then
        local c = getfenv(2).script
        local b = fnd(ScriptEnable, c.Name)
        if (fnd(Methods, ({...})[select("#", ...)])) or (b) then 
            if (fnd(Methods, ({...})[select("#", ...)])) or (b.Status.BackgroundColor3 == Color3.fromRGB(35, 140, 35)) then
                local locals = setmetatable(debug.getlocals(2), {
                    __index = function(self, field)
                        return (_G.getindex(self, field) or _G.getvalue(self, field))
                    end,
                    __call = function(self, f, v)
                        _G.setvalue(self, f, v)
                        _G.setindex(self, f, v)
                    end
                })
                local upvalues = setmetatable(debug.getupvalues(2), {
                    __index = function(self, field)
                        return (_G.getindex(self, field) or _G.getvalue(self, field))
                    end,
                    __call = function(self, f, v)
                        _G.setvalue(self, f, v)
                        _G.setindex(self, f, v)
                    end
                })
                local id = create_tkey(locals, upvalues)

                if (fnd(Scripts, id) == nil) then
                    add_caller({
                        locals = locals,
                        upvalues = upvalues,
                        env_id = id,
                        script = c,
                        method = ({...})[select("#", ...)]
                    })
                end
                if (script_envs[id]) then 
                    for i, v in next, script_envs[id].locals do
                        debug.setlocal(2, tostring(i), v)
                    end
                    for i, v in next, script_envs[id].upvalues do
                        debug.setupvalue(2, tostring(i), v)
                    end
                end
            end
        end
    end

    return b_namecall(...)
end

game_meta.__namecall = hook_namecall
