--[[

                                                                                                                                                                      
  ,ad8888ba,                                   88                                      88           88  88                                                            
 d8"'    `"8b                                  ""                                      88           ""  88                                                            
d8'        `8b                                                                         88               88                                                            
88          88  ,adPPYba,  88,dPYba,,adPYba,   88  88       88  88,dPYba,,adPYba,      88           88  88,dPPYba,   8b,dPPYba,  ,adPPYYba,  8b,dPPYba,  8b       d8  
88          88  I8[    ""  88P'   "88"    "8a  88  88       88  88P'   "88"    "8a     88           88  88P'    "8a  88P'   "Y8  ""     `Y8  88P'   "Y8  `8b     d8'  
Y8,        ,8P   `"Y8ba,   88      88      88  88  88       88  88      88      88     88           88  88       d8  88          ,adPPPPP88  88           `8b   d8'   
 Y8a.    .a8P   aa    ]8I  88      88      88  88  "8a,   ,a88  88      88      88     88           88  88b,   ,a8"  88          88,    ,88  88            `8b,d8'    
  `"Y8888Y"'    `"YbbdP"'  88      88      88  88   `"YbbdP'Y8  88      88      88     88888888888  88  8Y"Ybbd8"'   88          `"8bbdP"Y8  88              Y88'     
                                                                                                                                                             d8'      
                                                                                                                                                            d8'  
Interface : Trix#2794
Script : Trix#2794 / Julman#1234

--]]

---@diagnostic disable: redefined-local, undefined-global, unused-local, param-type-mismatch, redundant-value, lowercase-global, undefined-field

pcall(function()
	local snd = 6026984224
	local sound = Instance.new("Sound",Workspace)
	sound.SoundId = "rbxassetid://"..snd
	sound.Name = "Notification"
	sound.Volume = 1
	sound:Play()

	sound.Ended:Connect(function ()
		sound:Destroy() 
	end)
end)

local library = (function()
    local UserInputService = game:GetService("UserInputService")

    local library = {
		WindowState = {
			Openned = 1,
			Minimized = 0,
			Destroyed = -1
		}
	}
	
    local Font = Enum.Font.GothamBold

    local Colors = {
        White = Color3.fromRGB(255, 255, 255),
        Black = Color3.fromRGB(0, 0, 0),
        Cyan = Color3.fromRGB(85, 255, 255),
        Gray = {
            Stroke = Color3.fromRGB(145, 145, 145),
            Button = Color3.fromRGB(45, 45, 45),
            DarkButton = Color3.fromRGB(40, 40, 40),
            Top = Color3.fromRGB(26, 26, 26),
            FramesBack = Color3.fromRGB(36, 36, 36),
			TogBox = Color3.fromRGB(32, 33, 32),
			DropDownButton = Color3.new(0.235294, 0.235294, 0.235294)
        },
		Gradients = {
			Cyan = 
			ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.027451, 1, 0.968627)), 
			ColorSequenceKeypoint.new(1, 
			Color3.new(0.0196078, 0.305882, 0.615686
						)
					)
				}
			),
		}
    }

	function autobutcolor(value,color)
		local TweenService = game:GetService("TweenService")
		value.MouseEnter:Connect(function()
			TweenService:Create(
				value,
				TweenInfo.new(0.2, Enum.EasingStyle.Quad),
				{BackgroundColor3 = Color3.fromRGB(80,80,80)}
			):Play()
		end)
		
		value.MouseLeave:Connect(function()
			TweenService:Create(
				value,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad),
				{BackgroundColor3 = color}
			):Play()
		end)
	end

	function _if(bool, func1, func2) 
		if bool then return func1 else return func2 end
	end

    ---@param name string
    ---@param parent any
    ---@param props table
    ---@param childs ?table
    ---@return any
    local function CreateInstance(name, parent, props, childs)
        local childs = childs or {}

        local instance = Instance.new(name, parent)

        for i, v in pairs(props) do instance[i] = v end
        for _, v in pairs(childs) do v.Parent = instance end

        return instance
    end

    ---@param title ?string
    function library:CreateWindow(title)
        local title = title or "Proxima Hub Window"
        local parent = game.CoreGui
		local state = library.WindowState.Openned

        local window_id = math.random(1, 400)

        local window = {}

        local screen = CreateInstance("ScreenGui", parent, {
            Name = "lib_" .. window_id,
            ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        })

		function window:Destroy()
			screen:Destroy()
			state = library.WindowState.Destroyed
		end

		function window:GetTitle()
			return title
		end

        local top = CreateInstance("Frame", screen, {
            Name = "Top",
            Position = UDim2.new(0.375, 0,0.184, 0),
            BorderColor3 = Colors.Gray.Stroke,
            Size = UDim2.new(0, 612,0, 42),
            BackgroundColor3 = Color3.fromRGB(20,20,20)
        })

        Instance.new("UICorner", top)

        CreateInstance("TextLabel", top, {
            TextColor3 = Colors.White,
            BorderColor3 = Colors.Gray.Stroke,
            Text = title,
            Font = Font,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 50),
            Position = UDim2.new(0, 15, -0.194, 0),
            TextSize = 14,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left
        })

        local closeButton = CreateInstance("ImageButton", top, {
            ImageRectSize = Vector2.new(24, 24),
            ImageRectOffset = Vector2.new(284, 4),
            Name = "close",
            Position = UDim2.new(0.934862137, 0, 0.0846694857, 0),
            Image = "rbxassetid://3926305904",
            ZIndex = 2,
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 25, 0, 25)
        })

        closeButton.MouseButton1Click:Connect(function()
			window:Destroy()
        end)

        local minimizeButton = CreateInstance("ImageButton", top, {
            ImageRectSize = Vector2.new(36, 36),
            ImageRectOffset = Vector2.new(44, 164),
            Name = "filter_none",
            Position = UDim2.new(0.88778609, 0, 0.143002853, 0),
            Image = "rbxassetid://3926305904",
            ZIndex = 2,
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 18, 0, 20)
        })

		local hideButton = CreateInstance("TextButton", top, {
			BackgroundTransparency = 1,
			Font = Enum.Font.SourceSans,
			Name = "-",
			Position = UDim2.new(0.829, 0,0, 0),
			TextColor3 = Color3.new(0.768628, 0.764706, 0.780392),
			Text = "-",
			TextSize = 67,
			Size = UDim2.new(0, 22, 0, 22)
		})

		hideButton.MouseButton1Click:Connect(function()
			window:Hide()

			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title="Minimized",
				Text="KeyBind : LeftAlt",
				Duration=1
			})
		end)

        pcall(function()
            local IsDragging = false
            local dragInput
            local StartingPoint
            local oldPos

            local function update(input)
                local delta = input.Position - StartingPoint
                top.Position = UDim2.new(oldPos.X.Scale, oldPos.X.Offset + delta.X, oldPos.Y.Scale,
                    oldPos.Y.Offset + delta.Y)
            end

            top.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    IsDragging = true
                    StartingPoint = input.Position
                    oldPos = top.Position

                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            IsDragging = false
                        end
                    end)
                end
            end)

            top.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement then
                    dragInput = input
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if input == dragInput and IsDragging then
                    update(input)
                end
            end)
        end)

        local windowContainer = CreateInstance("Frame", top, {
            Position = UDim2.new(0, 0,0.764, 0),
            BorderColor3 = Colors.White,
            ZIndex = 0,
            Size = UDim2.new(0, 612,0, 370),
            BackgroundColor3 = Colors.Gray.Top
        })

        Instance.new("UICorner", windowContainer)

        pcall(function()
            local openned = true

			function window:Hide()
				openned = false
                top.Visible = false
			end

			function window:Show()
				openned = true
            	top.Visible = true
			end

            UserInputService.InputBegan:Connect(function (input)
                if input.KeyCode == Enum.KeyCode.LeftAlt then
                    if openned then
						window:Hide()
					else
						window:Show()
                    end
                end
            end)
        end)

        local windowBody = CreateInstance("ScrollingFrame", windowContainer, {
            ScrollBarImageColor3 = Colors.Black,
            Active = true,
            BorderColor3 = Colors.Gray.Stroke,
            ScrollBarThickness = 0,
            ScrollBarImageTransparency = 1,
            Position = UDim2.new(0.257, 0,0.025, 0),
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
	        CanvasSize = UDim2.new(0, 0, 0, 0),
            Size = UDim2.new(0, 448,0, 350),
            BorderSizePixel = 0,
            BackgroundColor3 = Colors.Gray.Top
        })

        local borders = CreateInstance("Frame", windowContainer, {
            BackgroundTransparency = 1,
            Position = UDim2.new(0.265, 0,0.025, 0),
            Size = UDim2.new(0, 445, 0, 350),
            Name = "Borders",
            Parent = frame,
        })

        local ustrbord = CreateInstance("UIStroke", borders, {
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
            Color = Color3.fromRGB(67, 67, 67),
            Transparency = 0.8
        })

        CreateInstance("UICorner", borders, {
            CornerRadius = UDim.new(0, 6)
        })

        local tabs = {}
        local tabsNames = {}
        local currentTab = 1

		local scrollingFrameTabs = CreateInstance("ScrollingFrame", windowContainer, {
			ScrollBarImageColor3 = Colors.Black,
			Active = true,
			BorderColor3 = Colors.Gray.Stroke,
			ScrollBarThickness = 0,
			ScrollBarImageTransparency = 1,
			VerticalScrollBarInset = Enum.ScrollBarInset.Always,
			AutomaticCanvasSize = Enum.AutomaticSize.X,
			CanvasSize = UDim2.new(0, 0, 0, 0),
			Name = "ScrollingFrameTabs",
			Position = UDim2.new(0, 0,0.01, 0),
			Size = UDim2.new(0, 160,0, 355),
			BackgroundTransparency = 1,
			BackgroundColor3 = Colors.Gray.Top,
		})

		CreateInstance("UIGridLayout", scrollingFrameTabs, {
			FillDirection = Enum.FillDirection.Vertical,
			CellSize = UDim2.new(0, 150,0, 25),
			SortOrder = Enum.SortOrder.LayoutOrder,
            CellPadding = UDim2.new(0, 5,0, 10),
		})
		
		CreateInstance("UIPadding", scrollingFrameTabs, {
			PaddingTop = UDim.new(0, 10),
            PaddingLeft = UDim.new(0, 5),
		})

        pcall(function()
            local frame = top.Frame

            local function PlayTween(first, bool)
                local speed = 0.3

                frame:TweenSize(first, "Out", "Quint", speed)
                windowBody.Visible = bool
                scrollingFrameTabs.Visible = bool
				ustrbord.Enabled = bool
            end

            minimizeButton.MouseButton1Click:Connect(function()
                if windowBody.Visible == true then
                    PlayTween(UDim2.new(0, frame.AbsoluteSize.X, 0, 10), false)
                    state = library.WindowState.Minimized

                else
                    PlayTween(UDim2.new(0, frame.AbsoluteSize.X, 0, 370), true)

                    state = library.WindowState.Openned
                end
            end)
        end)

		local function changeTab(id)
			local name = "Tab" .. id

			for _, v in pairs(windowBody:GetChildren()) do
				if name ~= v.Name and v:IsA("Frame") then
					v.Visible = false
				end
			end
			for i, v in pairs(scrollingFrameTabs:GetChildren()) do 
				if name ~= v.Name and v:IsA("TextButton") then
					v.TextColor3 = Color3.fromRGB(173, 173, 173)
				end
			end

			windowBody[name].Visible = true
			scrollingFrameTabs[name].TextColor3 = Colors.White
		end

		local function createTabButton(id, text)
			local tabButton = CreateInstance("TextButton", scrollingFrameTabs, {
				TextColor3 = _if(id == 1,Colors.White,Color3.fromRGB(173, 173, 173)),
				BorderColor3 = Colors.Gray.Stroke,
				Text = text,
				Font = Font,
				Name = "Tab" .. id,
				Position = UDim2.new(-1.12306619, 0, 2.00234604, 0),
				AutoButtonColor = false,
				Size = UDim2.new(0, 200, 0, 50),
				TextSize = 12,
				BackgroundColor3 = Colors.Gray.Top
			})

			CreateInstance("UICorner", tabButton, {
				CornerRadius = UDim.new(0, 10)
			})

			autobutcolor(tabButton,Colors.Gray.Top)

			tabButton.MouseButton1Click:Connect(function ()
				changeTab(id)
			end)
		end

		function window:GetCurrentState()
			return state
		end

        ---@param name string
        function window:CreateTab(name)
            local tab = {}
			local tabId = #tabs + 1

            local tabContainer = CreateInstance("Frame", windowBody, {
                Visible = false,
                Size = UDim2.new(0, 507, 0, 400),
                BackgroundTransparency = 1,
                Position = UDim2.new(0.0179270469, 0, -0.00809493847, 0),
                BorderColor3 = Colors.White,
                ZIndex = 3,
                Name = "Tab" .. tabId,
                BackgroundColor3 = Colors.White
            })

			if currentTab == tabId then
				tabContainer.Visible = true
			end

            table.insert(tabsNames, name)
            table.insert(tabs, tabContainer)

			createTabButton(tabId, name)

            CreateInstance("UIPadding", tabContainer, {
                PaddingTop = UDim.new(0, 7)
            }) 
			CreateInstance("UIListLayout", tabContainer, {
				Padding = UDim.new(0, 7),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

            ---@param label string
            ---@param callback ?function
            ---@param placeholder ?string
            function tab:CreateTextbox(label, callback, placeholder)
                local callback = callback or function(_) end
                local placeholder = placeholder or "Write Here"

				local textbox = {}

                local textBoxLabel = CreateInstance("TextLabel", tabContainer, {
                    TextColor3 = Colors.White,
                    Text = "  " .. label,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Font = Font,
                    Name = "TextBox",
                    Position = UDim2.new(0.348881781, 0, 2.46790123, 0),
					Size = UDim2.new(0, 438, 0, 35),
                    ZIndex = 0,
                    TextSize = 14,
                    BackgroundColor3 = Colors.Gray.DarkButton
                })

                CreateInstance("UIStroke", textBoxLabel, {
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(67, 67, 67),
                 }) 
				
                local textBoxInstance = CreateInstance("TextBox", textBoxLabel, {
                    TextWrapped = true,
                    TextColor3 = Color3.new(0.698039, 0.698039, 0.698039),
                    BorderColor3 = Colors.Gray.Stroke,
                    Text = "",
                    AnchorPoint = Vector2.new(0, 1),
                    Font = Font,
                    Position = UDim2.new(0.796531916, 0, 0.927345312, 0),
                    Size = UDim2.new(0, 85, 0, 27),
                    PlaceholderText = placeholder,
                    TextSize = 12,
                    BackgroundColor3 = Colors.Gray.TogBox,
					ClearTextOnFocus = false,
                })

                CreateInstance("UIStroke", textBoxInstance, {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.new(0.254902, 0.254902, 0.254902),
				})

                CreateInstance("UICorner", textBoxInstance, {
					CornerRadius = UDim.new(0,5)
				})

                CreateInstance("UICorner", textBoxLabel, {
					CornerRadius = UDim.new(0,5)
				})

                pcall(function()
                    local function shrink()
						task.wait(0.05)
						textBoxInstance:TweenPosition(UDim2.new(0.796531916, 0, 0.927345312, 0), "In", "Linear", 0.2)
						textBoxInstance:TweenSize(UDim2.new(0, 85, 0, 27), "Out", "Linear", 0.2)
                    end

                    local function grow()
						task.wait(0.05)
						textBoxInstance:TweenPosition(UDim2.new(0.597, 0, 0.927345312, 0), "In", "Linear", 0.2)
						textBoxInstance:TweenSize(UDim2.new(0, 175, 0, 27), "In", "Linear", 0.2)
                    end

                    textBoxInstance.FocusLost:Connect(function(enter)
                        if enter then
                            callback(textBoxInstance.Text)
                            shrink()
                        end
                    end)

                    textBoxInstance.Focused:Connect(function() grow() end)

                    textBoxInstance.MouseEnter:Connect(function()
                        task.wait(0.05)
                        grow()
                    end)

                    textBoxInstance.MouseLeave:Connect(function() shrink() end)
                end)

				function textbox:GetLabel()
					return string.sub(textBoxLabel.Text, 2)
				end

				function textbox:SetLabel(text)
					textBoxLabel.Text = "  " .. text
				end

				function textbox:GetValue()
					return textBoxInstance.Text
				end

				function textbox:SetValue(value)
					textBoxInstance.Text = value
				end

				return textbox
            end

            ---@param label string
            ---@param minvalue ?number
            ---@param maxvalue ?number
            ---@param callback ?function
            function tab:CreateSlider(label, minvalue, maxvalue, callback)
				minvalue = minvalue or 0
				maxvalue = maxvalue or 100
                --local default = default or 50
                local callback = callback or function(_) end

				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				local Value;

                local sliderLabel = CreateInstance("TextLabel", tabContainer, {
                    TextColor3 = Colors.White,
                    Text = "  " .. label,
                    Size = UDim2.new(0, 438, 0, 35),
                    Font = Font,
                    Name = "Slider",
                    Position = UDim2.new(0.349, 0,0.468, 0),
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextYAlignment = Enum.TextYAlignment.Top,
                    TextSize = 14,
                    BackgroundColor3 = Colors.Gray.DarkButton
                })

                CreateInstance("UIStroke", sliderLabel, {
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(67, 67, 67),
                 })

                CreateInstance("UICorner", sliderLabel, {
					CornerRadius = UDim.new(0,5)
				})

				CreateInstance("UIPadding",sliderLabel, {
					PaddingBottom = UDim.new(0, 10),
					PaddingTop = UDim.new(0, 3),
				})
				
				local SliderButton = CreateInstance("TextButton",sliderLabel, {
					Name = "SliderButton",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					Position = UDim2.new(0.017, 0,0.708, 0),
					Size = UDim2.new(0, 425,0, 13),
					Font = Enum.Font.SourceSans,
					TextColor3 = Color3.fromRGB(0, 0, 0),
					AutoButtonColor = false,
					TextSize = 14.000,
					TextTransparency = 1.000,
					ClipsDescendants = true,
				})

				CreateInstance("UICorner",SliderButton, {
					CornerRadius = UDim.new(0,25)
				})
			
				local SliderInner = CreateInstance("Frame",SliderButton, {
					Name = "SliderInner",
					BackgroundColor3 = Colors.Cyan,
					BackgroundTransparency = 0,
					Position = UDim2.new(-0.0, 0, 0, 0),
					Size = UDim2.new(0, 0, 0, 13),
					BorderColor3 = Color3.fromRGB(50,50,50)
				})

				CreateInstance("UICorner",SliderInner,{
					CornerRadius = UDim.new(0,25)
				})

				CreateInstance("UIGradient",SliderInner, {
					Color = Colors.Gradients.Cyan
				})

				local SliderValue = CreateInstance("TextLabel",sliderLabel, {
					Name = "SliderValue",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.585, 0,0.09, 0),
					Size = UDim2.new(0, 175,0, 13),
					Font = Enum.Font.GothamBold,
					Text = "0",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 12.000,
					TextXAlignment = Enum.TextXAlignment.Right,
				})

				CreateInstance("UICorner",SliderValue,{})

				SliderButton.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 426) * SliderInner.AbsoluteSize.X) + tonumber(minvalue)) or 0
					pcall(function()
						callback(Value)
						SliderValue.Text = Value
					end)
					SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 426), 0, 13)
					moveconnection = mouse.Move:Connect(function()
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 426) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()
							callback(Value)
							SliderValue.Text = Value
						end)
						SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 426), 0, 13)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 426) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
							pcall(function()
								callback(Value)
								SliderValue.Text = Value
							end)
							SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 426), 0, 13)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
            end

			---@param label string
			---@param default ?boolean
			---@param callback ?function
            function tab:CreateToggle(label, default, callback)
                local default = default or false
                local callback = callback or function(_) end

				local toggle = {}

                local mainToggleContainer = CreateInstance("TextButton", tabContainer, {
                    Font = Font,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextColor3 = Colors.White,
					AutoButtonColor = false,
                    Size = UDim2.new(0, 438, 0, 35),
                    Text = "  " .. label,
                    TextSize = 14,
                    BackgroundColor3 = Colors.Gray.DarkButton
                })

                CreateInstance("UIStroke", mainToggleContainer, {
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(67, 67, 67),
                }) 
				
                CreateInstance("UICorner", mainToggleContainer, {
					CornerRadius = UDim.new(0,5)
				})

                local toggleContainer = CreateInstance("Frame", mainToggleContainer, {
                    Name = "Toggle",
                    Position = UDim2.new(0.900, 0,0.37, 0),
                    ZIndex = 2,
                    Size = UDim2.new(0, 14, 0, 15),
                    BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                })

                CreateInstance("UICorner", toggleContainer, {})

                local boolValue = CreateInstance("BoolValue", toggleContainer, {
                    Name = "State",
                    Value = default
                })

                local toggleButton = CreateInstance("TextButton", mainToggleContainer, {
                    TextColor3 = Colors.Black,
                    BorderColor3 = Colors.Gray.Stroke,
                    AutoButtonColor = false,
                    Font = Enum.Font.SourceSans,
                    Name = "ToggleBtn",
                    Position = UDim2.new(0.897, 0,0.341, 0),
                    TextTransparency = 1,
                    Size = UDim2.new(0, 37,0, 17),
                    TextSize = 14,
                    BackgroundColor3 = Colors.White
                })

                CreateInstance("UICorner", toggleButton, {})

				CreateInstance("UIGradient",toggleButton, {
					Color = Colors.Gradients.Cyan
				})

				autobutcolor(mainToggleContainer,Colors.Gray.DarkButton)

                local function update(call)
					local speed = 0.1
                    if boolValue.Value == false then

                        toggleButton.UIGradient.Enabled = false
                        toggleContainer:TweenPosition(UDim2.new(0.900, 0,0.37, 0), "In", "Linear", speed, false)
                    else

						toggleButton.UIGradient.Enabled = true
						toggleContainer:TweenPosition(UDim2.new(0.945, 0,0.37, 0), "Out", "Linear", speed, false)
						wait(0.05)
                    end

                    if call then
                        callback(boolValue.Value)
                    end
                end

                pcall(function()
                    update(false)

                    toggleButton.MouseButton1Click:Connect(function()
                        boolValue.Value = not boolValue.Value
                        update(true)
                    end)

                    toggleContainer.Parent.MouseButton1Click:Connect(function()
                        boolValue.Value = not boolValue.Value
                        update(true)
                    end)
                end)

				function toggle:GetLabel()
					return string.sub(mainToggleContainer.Text, 2)
				end

				function toggle:SetLabel(text)
					mainToggleContainer.Text = "  " .. text
				end
				
				function toggle:GetValue()
					return boolValue.Value
				end

				---@param value boolean
				function toggle:SetValue(value)
					boolValue.Value = value
					update(false)
				end

				return toggle
            end

			---@param title string
			---@param description ?string	
			function tab:CreateLabel(title, description)
				local label = {}

				local textLabel = CreateInstance("TextLabel", tabContainer, {
					TextWrapped = true,
					TextColor3 = Colors.White,
					Text = "  " .. (title or ""),
					TextYAlignment = Enum.TextYAlignment.Top,
					Font = Font,
					Name = "Label",
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0, 438, 0, 35),
					ZIndex = 0,
					TextSize = 14,
					BackgroundColor3 = Colors.Gray.DarkButton
				})

                CreateInstance("UIStroke", textLabel, {
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(67, 67, 67),
                })
 
				CreateInstance("UICorner", textLabel, {
					CornerRadius = UDim.new(0,5)
				})

				local textDescription = CreateInstance("TextLabel", textLabel, {
					TextColor3 = Colors.White,
					Text = "   " .. (description or ""),
					Font = Font,
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.350000083, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0, 119, 0, 26),
					TextSize = 12,
					BackgroundColor3 = Colors.White,
					Visible = #(description or "") > 0
				})

				function label:GetTitle()
					return string.sub(textLabel.Text, 1)
				end

				function label:SetTitle(title)
					textLabel.Text = " " .. title
				end

				function label:GetDescription()
					return string.sub(textDescription.Text, 1)
				end

				function label:SetDescription(description)
					textDescription.Text = "   " .. description

					textDescription.Visible = #(description or "") > 0
				end

				return label
			end

			function tab:CreateButton(name, callback)
				local callback = callback or function(_) end

				local button = {}

				local buttonContainer = CreateInstance("TextButton",tabContainer, {
				    TextColor3 = Colors.White,
				    Text = "  "..name,
				    Font = Font,
				    Position = UDim2.new(0, 0, 0.166284561, 0),
				    TextXAlignment = Enum.TextXAlignment.Left,
					AutoButtonColor = false,
				    Size = UDim2.new(0, 438, 0, 35),
				    TextSize = 14,
					BackgroundColor3 = Colors.Gray.DarkButton
				})

				CreateInstance("UICorner", buttonContainer, {
					CornerRadius = UDim.new(0,5)
				})

                CreateInstance("UIStroke", buttonContainer, {
                   ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                   Color = Color3.fromRGB(67, 67, 67),
                })

				local mouse = CreateInstance("ImageButton", buttonContainer, {
				    ImageRectSize = Vector2.new(36, 36),
				    Image = "rbxassetid://3926305904",
				    Name = "mouse",
				    Position = UDim2.new(0.926306903, 0, 0.235370617, 0),
				    ImageRectOffset = Vector2.new(204, 964),
				    ZIndex = 2,
				    BackgroundTransparency = 1,
				    Size = UDim2.new(0, 25, 0, 24),
				})

				autobutcolor(buttonContainer,Colors.Gray.DarkButton)

				buttonContainer.MouseButton1Click:Connect(function()
					callback()
				end)

				function button:GetLabel()
					return string.sub(buttonContainer.Text, 2)
				end

				function button:SetLabel(label)
					buttonContainer.Text = "  " .. label
				end

				return button
			end

			function tab:CreateDropdown(text, values, callback)
				local values = values or {}
				local callback = callback or function(_) end

				local dropdownContainer = CreateInstance("Frame", tabContainer, {
					Name = "Dropdown",
					Position = UDim2.new(0, 0, 0.636, 0),
					ClipsDescendants = false,
					Size = UDim2.new(0, 900, 0, 35),
					BackgroundTransparency = 1,
				})

				CreateInstance("UIPadding", dropdownContainer, {
					PaddingTop = UDim.new(0, 9)
				})

				local dropdownSearchBox = CreateInstance("TextBox", dropdownContainer, {
					Visible = false,
					TextColor3 = Color3.new(0.698039, 0.698039, 0.698039),
					Text = "",
					PlaceholderText = "Search",
					PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039),
					Font = Enum.Font.SourceSansBold,
					Name = "SearchBar",
					Position = UDim2.new(0.645004511, 0, -0.030000296, 0),
					Size = UDim2.new(0, 130, 0, 20),
					ZIndex = 4,
					TextSize = 14,
					BackgroundColor3 = Colors.Gray.TogBox,
					TextWrapped = true,
				})

				CreateInstance("UIStroke", dropdownSearchBox, {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(67, 67, 67),
				})

				CreateInstance("UICorner", dropdownSearchBox, {
					CornerRadius = UDim.new(0,20)
				})

				CreateInstance("UICorner", dropdownContainer, {
					CornerRadius = UDim.new(0,5)
				})

				local dropdownLabel = CreateInstance("TextButton", dropdownContainer, {
					TextColor3 = Colors.White,
					Text = "  " .. text,
					AnchorPoint = Vector2.new(0, 1),
					Font = Font,
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.new(0, 0, 1, 0),
					AutoButtonColor = false,
					Size = UDim2.new(0, 438, 0, 35),
					ZIndex = 3,
					TextSize = 14,
					BackgroundColor3 = Colors.Gray.DarkButton,
					BackgroundTransparency = 0
				})

				autobutcolor(dropdownLabel,Colors.Gray.DarkButton)

				CreateInstance("UICorner", dropdownLabel, {
					CornerRadius = UDim.new(0,5)
				})

				CreateInstance("UIStroke", dropdownLabel, {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(67, 67, 67),
				})

				local Script106 = CreateInstance("Script", dropdownLabel, {})

				local dropdownSelectedLabel = CreateInstance("TextLabel", dropdownLabel, {
					TextWrapped = true,
					TextColor3 = Colors.White,
					Text = "",
					Font = Font,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.61172733, 0, -0.05, 0),
					Size = UDim2.new(0, 200, 0, 40),
					ZIndex = 3,
					TextSize = 12,
					BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
				})

				CreateInstance("UICorner", dropdownSelectedLabel, {})

				local dropdownValuesContainer = CreateInstance("ScrollingFrame", dropdownContainer, {
					ScrollBarImageColor3 = Colors.Black,
					Active = true,
					ScrollBarThickness = 0,
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.215384528, 0),
					ScrollBarImageTransparency = 1,
					Visible = false,
					Size = UDim2.new(0, 438, 0, 98),
					CanvasSize = UDim2.new(0,0,0,0),
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
				})

				CreateInstance("UICorner", dropdownValuesContainer, {
					CornerRadius = UDim.new(0,5)
				})

				CreateInstance("UIPadding", dropdownValuesContainer, {
					PaddingTop = UDim.new(0, 4)
				})

				local stroke = CreateInstance("UIStroke", dropdownValuesContainer, {
					Enabled = false,
					Color = Color3.fromRGB(67, 67, 67),
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 0.85,
				})

				local function addDropButton(value)
					return CreateInstance("TextButton", dropdownValuesContainer, {
						TextSize = 14,
						Font = Enum.Font.SourceSans,
						TextColor3 = Colors.White,
						Position = UDim2.new(0.0425531901, 0, 0.0840541124, 0),
						Size = UDim2.new(0, 438, 0, 20),
						AutoButtonColor = false,
						Text = value,
						BorderSizePixel = 0,
						BackgroundColor3 = Colors.Gray.DropDownButton,
					}, {
						Instance.new("UICorner")
					})
				end

				for _, v in pairs(values) do
					addDropButton(v)
				end

				for i, v in pairs(dropdownValuesContainer:GetChildren()) do 
					if v:IsA("TextButton") then
						autobutcolor(v,Colors.Gray.DropDownButton)
					end
				end

				CreateInstance("UIListLayout", dropdownValuesContainer, {
					Padding = UDim.new(0, 3)
				})

				local Script114 = CreateInstance("Script", dropdownValuesContainer, {
					Name = "Searching"
				})

				pcall(function()
					local dropdown = dropdownLabel.Parent
					local scrollingframe = dropdown.ScrollingFrame
					local searchbar = dropdown.SearchBar

					dropdownLabel.MouseButton1Click:Connect(function()
						if searchbar.Visible == false then
							dropdown:TweenSize(UDim2.new(0, 438, 0, 140), "Out", "Quint", 0.2)
							dropdownLabel:TweenPosition(UDim2.new(0, 0, 0.2, 0), "Out", "Quint", 0.2)
							searchbar:TweenPosition(UDim2.new(0.680, 0, -0.020, 0), "Out", "Quint", 0.2)
							scrollingframe.Visible = true
							stroke.Enabled = true
							searchbar.Visible = true
							dropdownSelectedLabel.Visible = false
						else
							dropdown:TweenSize(UDim2.new(0, 438, 0, 35), "Out", "Quint", 0.2)
							dropdown.TextButton:TweenPosition(UDim2.new(0, 0, 1, 0), "Out", "Quint", 0.2)
							scrollingframe.Visible = false
							stroke.Enabled = false
							searchbar.Visible = false
							dropdownSelectedLabel.Visible = true
						end
					end)
				end)

				pcall(function()
					local script = Script114
					local scrollframe = script.Parent
					local searchbar = scrollframe.Parent.SearchBar
	   
					local function updatesearch()
						for i,button in pairs(scrollframe:GetChildren()) do
							if button:IsA("TextButton") then
								local searchText = searchbar.Text

								if searchText ~= "" then
									local buttonText = string.lower(button.Text)
									
									if string.find(buttonText, searchText) then
										button.Visible = true
									else
										button.Visible = false
									end
								else
									button.Visible = true
								end
							end
						end
					end
	   
					searchbar.Changed:Connect(updatesearch)
				end)

				pcall(function()
					local selected = dropdownContainer.TextButton.TextLabel
					local searchbar = dropdownContainer.SearchBar

					local function PlayTeen(argu)
						argu:TweenSize(UDim2.new(0, 438, 0, 35), "Out", "Quint", 0.2)
						argu.TextButton:TweenPosition(UDim2.new(0, 0, 1, 0), "Out", "Quint", 0.2)
					end

					for i, v in pairs(dropdownValuesContainer:GetChildren()) do
						if v:IsA("TextButton") then
							v.MouseButton1Click:Connect(function()
								PlayTeen(dropdownContainer)

								dropdownValuesContainer.Visible = false
								searchbar.Visible = false
								stroke.Enabled = false
								dropdownSelectedLabel.Visible = true

								selected.Text = "- " .. v.Text

								callback(v.Text)
							end)
						end
					end
				end)
			
			end
		
            return tab
        end

        return window
    end
	
	return library

end)()

return library
