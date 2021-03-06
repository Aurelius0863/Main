--[[
UI Lib Design - Aurelius0863
UI Lib Scripting - Aurelius0863
]]

local circTime = 0.5

local Circ = Instance.new("ImageLabel")
Circ.Name = "Circle"
Circ.Parent = nil
Circ.BackgroundTransparency = 1
Circ.ZIndex = 10
Circ.Image = "rbxassetid://266543268"
Circ.ImageColor3 = Color3.fromRGB(26, 176, 109)
Circ.BorderSizePixel = 1
Circ.ImageTransparency = 0.85

local TS = game:GetService("TweenService")

local Mouse = game.Players.LocalPlayer:GetMouse()

function CircleClick(Button, X, Y)
    spawn(function()
            Button.ClipsDescendants = true
            
            local Circle2 = Circ:Clone()
                Circle2.Parent = Button
                local NewX = X - Circle2.AbsolutePosition.X
                local NewY = Y - Circle2.AbsolutePosition.Y
                Circle2.Position = UDim2.new(0, NewX, 0, NewY)
            
            local Size = 0
                if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
                    Size = Button.AbsoluteSize.X*1.5
                elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
                    Size = Button.AbsoluteSize.Y*1.5
                elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then																																																																														print("This place uses a model by Come0n.") --please do not remove!
                    Size = Button.AbsoluteSize.X*1.5
                end
            
                local Time = 0.5
			    Circle2:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
                for i=1,10 do
                    Circle2.ImageTransparency = Circle2.ImageTransparency + 0.01
                    wait(Time/10)
                end
            Circle2:Destroy()
    end)
end

local library = {}

function library:CreateWindow(name,name2)
    if game.CoreGui:FindFirstChild("UI") ~= nil then
        game.CoreGui:FindFirstChild("UI"):Destroy()
    end
 
    local UI = Instance.new("ScreenGui")
    local Main = Instance.new("ImageLabel")
    local Tabs = Instance.new("ImageLabel")
    local Text = Instance.new("ImageLabel")
    local Header = Instance.new("TextLabel")
    local SubHeader = Instance.new("TextLabel")
    local UIListLayout = Instance.new("UIListLayout")
    local Items = Instance.new("Frame")

    UI.Name = "UI"
    UI.Parent = game:GetService("CoreGui")
    UI.ResetOnSpawn = false

    Main.Name = "Main"
    Main.Parent = UI
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.Position = UDim2.new(0.290798962, 0, 0.258295119, 0)
    Main.Selectable = true
    Main.Size = UDim2.new(0, 500, 0, 300)
    Main.Image = "rbxassetid://3570695787"
    Main.ImageColor3 = Color3.fromRGB(19, 21, 25)
    Main.ScaleType = Enum.ScaleType.Slice
    Main.SliceCenter = Rect.new(100, 100, 100, 100)
    Main.SliceScale = 0.120

    Tabs.Name = "Tabs"
    Tabs.Parent = Main
    Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tabs.BackgroundTransparency = 1.000
    Tabs.Size = UDim2.new(0.335999995, 0, 1, 0)
    Tabs.Image = "rbxassetid://3570695787"
    Tabs.ImageColor3 = Color3.fromRGB(30, 32, 36)
    Tabs.ScaleType = Enum.ScaleType.Slice
    Tabs.SliceCenter = Rect.new(100, 100, 100, 100)
    Tabs.SliceScale = 0.120

    Text.Name = "Text"
    Text.Parent = Tabs
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.Position = UDim2.new(0.588571429, 0, 0.400000006, 0)
    Text.Size = UDim2.new(0.94, 0,-0.016, 50)
    Text.Image = "rbxassetid://3570695787"
    Text.ImageColor3 = Color3.fromRGB(30, 31, 36)
    Text.ScaleType = Enum.ScaleType.Slice
    Text.SliceCenter = Rect.new(100, 100, 100, 100)
    Text.SliceScale = 0.120

    Header.Name = name.."Header"
    Header.Parent = Text
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.BackgroundTransparency = 1.000
    Header.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Header.Position = UDim2.new(0.0475484803, 0, 0.117272675, 0)
    Header.Size = UDim2.new(1.02428567, -20, 0, 20)
    Header.ZIndex = 5
    Header.Font = Enum.Font.Merriweather
    Header.Text = name
    Header.TextColor3 = Color3.fromRGB(244, 244, 244)
    Header.TextSize = 23.000
    Header.TextWrapped = true

    SubHeader.Name = name2.."SubHeader"
    SubHeader.Parent = Text
    SubHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SubHeader.BackgroundTransparency = 1.000
    SubHeader.BorderColor3 = Color3.fromRGB(27, 42, 53)
    SubHeader.Position = UDim2.new(0, 0, 0, 27)
    SubHeader.Size = UDim2.new(1.11428571, -20, 0, 20)
    SubHeader.ZIndex = 5
    SubHeader.Font = Enum.Font.Merriweather
    SubHeader.Text = name2
    SubHeader.TextColor3 = Color3.fromRGB(195, 195, 195)
    SubHeader.TextSize = 20.000
    SubHeader.TextWrapped = true

    UIListLayout.Parent = Tabs
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0,5)

    local UIPadding = Instance.new("UIPadding")

    UIPadding.Parent = Tabs
    UIPadding.PaddingLeft = UDim.new(0, 10)

    Items.Parent = Main
    Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Items.BackgroundTransparency = 2.000
    Items.Position = UDim2.new(0.349999994, 0, 0, 0)
    Items.Size = UDim2.new(0, 325, 0, 299)

    -- Scripts:

    local function YHPSSO_fake_script() -- Main.LocalScript 
        local script = Instance.new('LocalScript', Main)

        local UserInputService = game:GetService("UserInputService")
        
        local gui = script.Parent
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        local function update(input)
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        
        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
    end
    coroutine.wrap(YHPSSO_fake_script)()
    local AwesomeTabs = {}
    local first = true
    function AwesomeTabs:CreateTab(text)
        local TabB = Instance.new("TextButton")
        local TabRoundify = Instance.new("ImageLabel")
        local TabContainer = Instance.new("ScrollingFrame")
        local UIListLayout2 = Instance.new("UIListLayout")

        TabContainer.Name = text
        TabContainer.Parent = Items
        TabContainer.Active = true
        TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabContainer.BackgroundTransparency = 1.000
        TabContainer.BorderSizePixel = 0
        TabContainer.Position = UDim2.new(0.0153846154, 0, 0.0172575377, 0)
        TabContainer.Size = UDim2.new(0, 314, 0, 294)
        TabContainer.ScrollBarThickness = 3
        TabContainer.Visible = false
        
        TabB.Name = text
        TabB.Parent = Tabs
        TabB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabB.BackgroundTransparency = 1.000
        TabB.BorderColor3 = Color3.fromRGB(27, 42, 53)
        TabB.Position = UDim2.new(0, 0, 0, 47)
        TabB.Size = UDim2.new(0, 150,0, 29)
        TabB.ZIndex = 3
        TabB.Font = Enum.Font.Merriweather
        TabB.Text = text
        TabB.TextColor3 = Color3.fromRGB(211, 211, 211)
        TabB.TextSize = 20.000
        TabB.TextWrapped = true
        TabB.MouseButton1Click:connect(function()
            for i ,v in pairs (Items:GetChildren()) do
                v.Visible = false
            end
                for _,v2 in pairs(Tabs:GetChildren()) do
                    if v2.ClassName == "TextButton" then
                        if v2.TextColor3 == Color3.fromRGB(211, 211, 211) then
                            game:GetService("TweenService"):Create(v2, TweenInfo.new(0.5),{TextColor3 = Color3.fromRGB(144, 144, 144)}):Play()
                            wait()
                    
                        end
                    end
                end
            game:GetService("TweenService"):Create(TabB, TweenInfo.new(0.5),{TextColor3 = Color3.fromRGB(211, 211, 211)}):Play()
            TabContainer.Visible = true
       end)
      
        if first then
            first = false
            TabContainer.Visible = true
            TabB.TextColor3 = Color3.fromRGB(211, 211, 211)
        else
            TabContainer.Visible = false
            TabB.TextColor3 = Color3.fromRGB(144, 144, 144)
        end
        TabRoundify.Name = "Tab Roundify"
        TabRoundify.Parent = TabB
        TabRoundify.Active = true
        TabRoundify.AnchorPoint = Vector2.new(0.5, 0.5)
        TabRoundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabRoundify.BackgroundTransparency = 1.000
        TabRoundify.Position = UDim2.new(0.5, 0, 0.5, 0)
        TabRoundify.Selectable = true
        TabRoundify.Size = UDim2.new(1, 0, 1, 0)
        TabRoundify.Image = "rbxassetid://3570695787"
        TabRoundify.ImageColor3 = Color3.fromRGB(20, 22, 26)
        TabRoundify.ScaleType = Enum.ScaleType.Slice
        TabRoundify.SliceCenter = Rect.new(100, 100, 100, 100)
        TabRoundify.SliceScale = 0.120

        UIListLayout2.Parent = TabContainer
        UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout2.Padding = UDim.new(0, 5)
        spawn(function()
            while true do
                TS:Create(TabContainer, TweenInfo.new(0.5), {CanvasSize = UDim2.new(0,0,0,UIListLayout2.AbsoluteContentSize.Y) + UDim2.new(0,0,0,50)}):Play()
                wait(0.5)
            end
        end)
        TabContainer.ChildAdded:Connect(function()
            wait()
            TS:Create(TabContainer, TweenInfo.new(0.5), {CanvasSize = UDim2.new(0,0,0,UIListLayout2.AbsoluteContentSize.Y) + UDim2.new(0,0,0,50)}):Play()
        end)
        
        TabContainer.ChildRemoved:Connect(function()
            wait()
            TS:Create(TabContainer, TweenInfo.new(0.5), {CanvasSize = UDim2.new(0,0,0,UIListLayout2.AbsoluteContentSize.Y) - UDim2.new(0,0,0,50)}):Play()
        end)
        local Sections = {}

        function Sections:CreateSection(text)
            local Section = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local UICorner = Instance.new("UICorner")
            
            
            Section.Name = "Section"
            Section.Parent = TabContainer
            Section.BackgroundColor3 = Color3.fromRGB(21, 148, 91)
            Section.Size = UDim2.new(0, 306, 0, 35)
            
            TextLabel.Parent = Section
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.0294117648, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 284, 0, 33)
            TextLabel.Font = Enum.Font.Code
            TextLabel.Text = text
            TextLabel.TextColor3 = Color3.fromRGB(212, 212, 212)
            TextLabel.TextSize = 20.000
            TextLabel.TextWrapped = true
            
            UICorner.CornerRadius = UDim.new(0, 6)
            UICorner.Parent = Section

            local Elements = {}
            function Elements:CreateButton(text,callback)
                callback = callback or function() end
                text = text or "Button"
                local Button = Instance.new("TextButton")
                local ButtonOutline = Instance.new("ImageLabel")
                local Circle = Instance.new("ImageLabel")

                Button.Name = "Button"
                Button.Parent = TabContainer
                Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Button.BackgroundTransparency = 1.000
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0.00326797389, 0, 0.0367225632, 0)
                Button.Size = UDim2.new(0, 304, 0, 38)
                Button.ZIndex = 3
                Button.Font = Enum.Font.Merriweather
                Button.TextColor3 = Color3.fromRGB(192, 192, 192)
                Button.TextSize = 20.000
                Button.Text = text
                Button.MouseButton1Click:Connect(function()
                    CircleClick(Button,Mouse.X,Mouse.Y)
                    pcall(callback)
                end)
                ButtonOutline.Name = "ButtonOutline"
                ButtonOutline.Parent = Button
                ButtonOutline.Active = true
                ButtonOutline.AnchorPoint = Vector2.new(0.5, 0.5)
                ButtonOutline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonOutline.BackgroundTransparency = 1.000
                ButtonOutline.Position = UDim2.new(0.5, 0, 0.5, 0)
                ButtonOutline.Selectable = true
                ButtonOutline.Size = UDim2.new(0, 306, 0, 40)
                ButtonOutline.Image = "rbxassetid://3570695787"
                ButtonOutline.ImageColor3 = Color3.fromRGB(30, 32, 36)
                ButtonOutline.ScaleType = Enum.ScaleType.Slice
                ButtonOutline.SliceCenter = Rect.new(100, 100, 100, 100)
                ButtonOutline.SliceScale = 0.120
            end

            function Elements:CreateToggle(name,callback)
                callback = callback or function() end
                name = name or "Toggle"
                local ToggleBack = Instance.new("TextButton")
                local TextButton_Roundify_12px = Instance.new("ImageLabel")
                local TextLabel = Instance.new("TextLabel")
                local ToggleB = Instance.new("ImageLabel")
                local Circle = Instance.new("ImageLabel")
                local CircleB = Instance.new("TextButton")
                local CircleBR = Instance.new("ImageLabel")
                local UICorner = Instance.new("UICorner")
                local toggled = false
                local debounce = false
                local TS = game:GetService("TweenService")
               
                ToggleBack.Name = "ToggleBack"
                ToggleBack.Parent = TabContainer
                ToggleBack.BackgroundColor3 = Color3.fromRGB(30, 32, 36)
                ToggleBack.BackgroundTransparency = 1.000
                ToggleBack.BorderSizePixel = 0
                ToggleBack.Size = UDim2.new(0, 306, 0, 40)
                ToggleBack.Font = Enum.Font.SourceSans
                ToggleBack.Text = ""
                ToggleBack.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleBack.TextSize = 14.000
              
                TextButton_Roundify_12px.Name = "TextButton_Roundify_12px"
                TextButton_Roundify_12px.Parent = ToggleBack
                TextButton_Roundify_12px.Active = true
                TextButton_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
                TextButton_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_Roundify_12px.BackgroundTransparency = 1.000
                TextButton_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextButton_Roundify_12px.Selectable = true
                TextButton_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
                TextButton_Roundify_12px.Image = "rbxassetid://3570695787"
                TextButton_Roundify_12px.ImageColor3 = Color3.fromRGB(30, 32, 36)
                TextButton_Roundify_12px.ScaleType = Enum.ScaleType.Slice
                TextButton_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
                TextButton_Roundify_12px.SliceScale = 0.120
                
                TextLabel.Parent = ToggleBack
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.Position = UDim2.new(0.0653594807, 0, -0.0250000004, 0)
                TextLabel.Size = UDim2.new(0, 205, 0, 40)
                TextLabel.Font = Enum.Font.Merriweather
                TextLabel.Text = name
                TextLabel.TextColor3 = Color3.fromRGB(192, 192, 192)
                TextLabel.TextSize = 20.000
                
                ToggleB.Name = "ToggleB"
                ToggleB.Parent = ToggleBack
                ToggleB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleB.BackgroundTransparency = 1.000
                ToggleB.Position = UDim2.new(0, 226, 0, 7)
                ToggleB.Size = UDim2.new(0, 64, 0, 25)
                ToggleB.Image = "rbxassetid://3570695787"
                ToggleB.ImageColor3 = Color3.fromRGB(176, 176, 176)
                ToggleB.ScaleType = Enum.ScaleType.Slice
                ToggleB.SliceCenter = Rect.new(100, 100, 100, 100)
                ToggleB.SliceScale = 0.120
                
                Circle.Name = "Circle"
                Circle.Parent = ToggleB
                Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Circle.BackgroundTransparency = 1.000
                Circle.Position = UDim2.new(0.0599999987, 0, 0.0416666679, 0)
                Circle.Size = UDim2.new(0, 21, 0, 22)
                Circle.Image = "rbxassetid://3570695787"
                Circle.ScaleType = Enum.ScaleType.Slice
                Circle.SliceCenter = Rect.new(100, 100, 100, 100)
                Circle.SliceScale = 0.120
                
                CircleB.Name = "CircleB"
                CircleB.Parent = Circle
                CircleB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                CircleB.BackgroundTransparency = 1.000
                CircleB.BorderSizePixel = 0
                CircleB.Size = UDim2.new(0, 21, 0, 22)
                CircleB.Font = Enum.Font.SourceSans
                CircleB.Text = ""
                CircleB.TextColor3 = Color3.fromRGB(0, 0, 0)
                CircleB.TextSize = 14.000
                CircleB.MouseButton1Click:Connect(function()
                    wait()
                    if debounce == false then
                        if toggled == false then
                            debounce = true
                            TS:Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0.6, 0,0.042, 0)}):Play()
                            TS:Create(ToggleB,TweenInfo.new(0.25),{ImageColor3 = Color3.fromRGB(26, 176, 109)}):Play()
                            wait(0.25)
                            debounce = false
                            toggled = not toggled
                            pcall(callback,toggled)
                        elseif toggled then
                            debounce = true
                            TS:Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0.066, 0,0.042, 0)}):Play()
                            TS:Create(ToggleB,TweenInfo.new(0.25),{ImageColor3 = Color3.fromRGB(176, 176, 176)}):Play()
                            wait(0.25)
                            debounce = false
                            toggled = not toggled
                            pcall(callback,toggled)
                        end
                    end
                end)

                ToggleBack.MouseButton1Click:Connect(function()
                    wait()
                    if debounce == false then
                        if toggled == false then
                            debounce = true
                            TS:Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0.6, 0,0.042, 0)}):Play()
                            TS:Create(ToggleB,TweenInfo.new(0.25),{ImageColor3 = Color3.fromRGB(26, 176, 109)}):Play()
                            wait(0.25)
                            debounce = false
                            toggled = not toggled
                            pcall(callback,toggled)
                        elseif toggled then
                            debounce = true
                            TS:Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0.066, 0,0.042, 0)}):Play()
                            TS:Create(ToggleB,TweenInfo.new(0.25),{ImageColor3 = Color3.fromRGB(176, 176, 176)}):Play()
                            wait(0.25)
                            debounce = false
                            toggled = not toggled
                            pcall(callback,toggled)
                        end
                    end
                end)
                
                CircleBR.Name = "CircleBR"
                CircleBR.Parent = CircleB
                CircleBR.Active = true
                CircleBR.AnchorPoint = Vector2.new(0.5, 0.5)
                CircleBR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                CircleBR.BackgroundTransparency = 1.000
                CircleBR.Position = UDim2.new(0.5, 0, 0.5, 0)
                CircleBR.Selectable = true
                CircleBR.Size = UDim2.new(1, 0, 1, 0)
                CircleBR.Image = "rbxassetid://3570695787"
                CircleBR.ScaleType = Enum.ScaleType.Slice
                CircleBR.SliceCenter = Rect.new(100, 100, 100, 100)
                CircleBR.SliceScale = 0.120
                UICorner.Parent = ToggleBack
            end
            function Elements:CreateSlider(text,min,max,callback2)
                text = text or "Slider"
                    callback2 = callback2 or function() end
                        local SliderBack = Instance.new("ImageLabel")
                        local SliderName = Instance.new("TextLabel")
                        local SliderBtn = Instance.new("TextButton")
                        local SliderBtn_Roundify_12px = Instance.new("ImageLabel")
                        local SliderInner = Instance.new("Frame")
                        local UICorner = Instance.new("UICorner")
                        local SliderCurrent = Instance.new("TextLabel")

                        SliderBack.Name = "SliderBack"
                        SliderBack.Parent = TabContainer
                        SliderBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        SliderBack.BackgroundTransparency = 1.000
                        SliderBack.Size = UDim2.new(0, 306, 0, 40)
                        SliderBack.Image = "rbxassetid://3570695787"
                        SliderBack.ImageColor3 = Color3.fromRGB(30, 32, 36)
                        SliderBack.ScaleType = Enum.ScaleType.Slice
                        SliderBack.SliceCenter = Rect.new(100, 100, 100, 100)
                        SliderBack.SliceScale = 0.120

                        SliderName.Name = "SliderName"
                        SliderName.Parent = SliderBack
                        SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        SliderName.BackgroundTransparency = 1.000
                        SliderName.Position = UDim2.new(0.00326797366, 0, 0, 0)
                        SliderName.Size = UDim2.new(0, 242, 0, 19)
                        SliderName.Font = Enum.Font.Merriweather
                        SliderName.Text = text
                        SliderName.TextColor3 = Color3.fromRGB(192, 192, 192)
                        SliderName.TextSize = 20.000
                        SliderName.TextWrapped = true

                        SliderBtn.Name = "SliderBtn"
                        SliderBtn.Parent = SliderBack
                        SliderBtn.BackgroundColor3 = Color3.fromRGB(16, 98, 162)
                        SliderBtn.BackgroundTransparency = 1.000
                        SliderBtn.BorderSizePixel = 0
                        SliderBtn.Position = UDim2.new(0.0555555522, 0, 0.475000024, 0)
                        SliderBtn.Size = UDim2.new(0, 276, 0, 15)
                        SliderBtn.Font = Enum.Font.SourceSans
                        SliderBtn.Text = ""
                        SliderBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                        SliderBtn.TextSize = 14.000

                        SliderBtn_Roundify_12px.Name = "SliderBtn_Roundify_12px"
                        SliderBtn_Roundify_12px.Parent = SliderBtn
                        SliderBtn_Roundify_12px.Active = true
                        SliderBtn_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
                        SliderBtn_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        SliderBtn_Roundify_12px.BackgroundTransparency = 1.000
                        SliderBtn_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
                        SliderBtn_Roundify_12px.Selectable = true
                        SliderBtn_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
                        SliderBtn_Roundify_12px.Image = "rbxassetid://3570695787"
                        SliderBtn_Roundify_12px.ImageColor3 = Color3.fromRGB(21, 148, 91)
                        SliderBtn_Roundify_12px.ScaleType = Enum.ScaleType.Slice
                        SliderBtn_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
                        SliderBtn_Roundify_12px.SliceScale = 0.120

                        SliderInner.Name = "SliderInner"
                        SliderInner.Parent = SliderBtn_Roundify_12px
                        SliderInner.BackgroundColor3 = Color3.fromRGB(26, 176, 109)
                        SliderInner.BorderColor3 = Color3.fromRGB(26, 176, 109)
                        SliderInner.Size = UDim2.new(0, 54, 0, 15)

                        UICorner.Parent = SliderInner

                        SliderCurrent.Name = "SliderCurrent"
                        SliderCurrent.Parent = SliderBack
                        SliderCurrent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        SliderCurrent.BackgroundTransparency = 1.000
                        SliderCurrent.Position = UDim2.new(0.761437893, 0, 0, 0)
                        SliderCurrent.Size = UDim2.new(0, 73, 0, 19)
                        SliderCurrent.Font = Enum.Font.Merriweather
                        SliderCurrent.Text = "25"
                        SliderCurrent.TextColor3 = Color3.fromRGB(192, 192, 192)
                        SliderCurrent.TextSize = 20.000
                        SliderCurrent.TextWrapped = true

                        -- Scripts:

                        local function QUKN_fake_script() -- SliderBtn.LocalScript 
                            local script = Instance.new('LocalScript', SliderBtn)
            
                            -----Variables-----
                            local mouse = game.Players.LocalPlayer:GetMouse()
                            local uis = game:GetService("UserInputService")
                            local btn = script.Parent
                            local Value;
                            local frame = SliderInner
                            local t = SliderCurrent

                            min = min or 0
                            max = max or 100
        
                            callback = callback or function() end
                            
                            SliderBtn.MouseButton1Down:Connect(function()
                                Value = math.floor((((tonumber(max) - tonumber(min)) / 276) * frame .AbsoluteSize.X) + tonumber(min)) or 0
                                local succ, errorMsg = pcall(callback2,Value)
                                if errorMsg then warn(errorMsg) end
                                frame.Size = UDim2.new(0, math.clamp(mouse.X - frame.AbsolutePosition.X, 0, 276), 0, 15)
                                moveconnection = mouse.Move:Connect(function()
                                    t.Text = Value
                                    Value = math.floor((((tonumber(max) - tonumber(min)) / 276) * frame.AbsoluteSize.X) + tonumber(min))
                                    local succ, errorMsg = pcall(callback2,Value)
                                    if errorMsg then warn(errorMsg) end
                                    frame:TweenSize(UDim2.new(0, math.clamp(mouse.X - frame.AbsolutePosition.X, 0, 276), 0, 15),nil,nil,0.01)
                                end)
                                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Value = math.floor((((tonumber(max) - tonumber(min)) / 276) * frame.AbsoluteSize.X) + tonumber(min))
                                        local succ, errorMsg = pcall(callback2,Value)
                                        if errorMsg then warn(errorMsg) end
                                        frame:TweenSize(UDim2.new(0, math.clamp(mouse.X - frame.AbsolutePosition.X, 0, 276), 0, 15),nil,nil,0.01)
                                        moveconnection:Disconnect()
                                        releaseconnection:Disconnect()
                                    end
                                end)
                            end)
                        end
                        coroutine.wrap(QUKN_fake_script)()
            end

            function Elements:CreateTB(name,placeholder,callback)
                callback = callback or function() end

                            name = name or "TextBox"

                            placeholder = placeholder or "Value"

                            local SmallTB = Instance.new("ImageLabel")
                            local TBLabel = Instance.new("TextLabel")
                            local TextBox = Instance.new("TextBox")

                            SmallTB.Name = "SmallTB"
                            SmallTB.Parent = TabContainer
                            
                            SmallTB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            SmallTB.BackgroundTransparency = 1.000
                            SmallTB.Size = UDim2.new(0, 306, 0, 40)
                            SmallTB.Image = "rbxassetid://3570695787"
                            SmallTB.ImageColor3 = Color3.fromRGB(30, 32, 36)
                            SmallTB.ScaleType = Enum.ScaleType.Slice
                            SmallTB.SliceCenter = Rect.new(100, 100, 100, 100)
                            SmallTB.SliceScale = 0.120

                            TBLabel.Name = "TBLabel"
                            TBLabel.Parent = SmallTB
                            TBLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TBLabel.BackgroundTransparency = 1.000
                            TBLabel.Position = UDim2.new(0.0490196086, 0, 0, 0)
                            TBLabel.Size = UDim2.new(0, 130, 0, 40)
                            TBLabel.Font = Enum.Font.Merriweather
                            TBLabel.Text = name
                            TBLabel.TextColor3 = Color3.fromRGB(192, 192, 192)
                            TBLabel.TextSize = 20.000

                            TextBox.Parent = SmallTB
                            TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            TextBox.BorderSizePixel = 0
                            TextBox.Position = UDim2.new(0.474836618, 0, 0.125, 0)
                            TextBox.Size = UDim2.new(0, 145, 0, 30)
                            TextBox.Font = Enum.Font.SciFi
                            TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
                            TextBox.PlaceholderText = placeholder
                            TextBox.Text = ""
                            TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
                            TextBox.TextSize = 20.000
                            TextBox.FocusLost:Connect(function()
                                local succ, errorMsg = pcall(callback,TextBox.Text)
                                if errorMsg then warn(errorMsg) end
                            end)

            end;

            function Elements:CreateDropDown(name)
                local DropDown = Instance.new("ImageLabel")
                local DropDownText = Instance.new("TextLabel")
                local ButtonBackground = Instance.new("Frame")
                local expand_more = Instance.new("ImageButton")
                local DropDownOutline = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local DropDownInner = Instance.new("ScrollingFrame")
                local UIListLay = Instance.new("UIListLayout")
                local UIPadding = Instance.new("UIPadding")

                DropDown.Name = "DropDown"
                DropDown.Parent = TabContainer
                DropDown.Active = true
                DropDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropDown.BackgroundTransparency = 1.000
                DropDown.ClipsDescendants = true
                DropDown.Position = UDim2.new(0, 0, 0.401360542, 0)
                DropDown.Size = UDim2.new(0, 306, 0, 36)
                DropDown.Image = "rbxassetid://3570695787"
                DropDown.ImageColor3 = Color3.fromRGB(30, 32, 36)
                DropDown.ScaleType = Enum.ScaleType.Slice
                DropDown.SliceCenter = Rect.new(100, 100, 100, 100)
                DropDown.SliceScale = 0.120

                DropDownText.Name = "DropDownText"
                DropDownText.Parent = DropDown
                DropDownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropDownText.BackgroundTransparency = 1.000
                DropDownText.Position = UDim2.new(0.0555555597, 0, 0, 0)
                DropDownText.Size = UDim2.new(0, 185, 0, 40)
                DropDownText.Font = Enum.Font.Merriweather
                DropDownText.Text = name
                DropDownText.TextColor3 = Color3.fromRGB(192, 192, 192)
                DropDownText.TextSize = 20.000

                ButtonBackground.Name = "ButtonBackground"
                ButtonBackground.Parent = DropDown
                ButtonBackground.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                ButtonBackground.BorderSizePixel = 0
                ButtonBackground.Position = UDim2.new(0.660130739, 0, 0.0500000007, 0)
                ButtonBackground.Size = UDim2.new(0, 77, 0, 32)

                expand_more.Name = "expand_more"
                expand_more.Parent = ButtonBackground
                expand_more.BackgroundTransparency = 1.000
                expand_more.Position = UDim2.new(0, 0, 0.0062494278, 0)
                expand_more.Size = UDim2.new(0, 76, 0, 32)
                expand_more.ZIndex = 2
                expand_more.Image = "rbxassetid://3926305904"
                expand_more.ImageRectOffset = Vector2.new(564, 284)
                expand_more.ImageRectSize = Vector2.new(36, 36)
                expand_more.ScaleType = Enum.ScaleType.Fit
                DropDownOutline.Name = "DropDownOutline"
                DropDownOutline.Parent = DropDown
                DropDownOutline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                DropDownOutline.Position = UDim2.new(0.0294117648, 0, 0.300000012, 0)
                DropDownOutline.Size = UDim2.new(0, 284, 0, 112)
                DropDownOutline.Visible = false

                UICorner.Parent = DropDownOutline

                DropDownInner.Name = "DropDownInner"
                DropDownInner.Parent = DropDownOutline
                DropDownInner.Active = true
                DropDownInner.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                DropDownInner.BorderSizePixel = 0
                DropDownInner.Position = UDim2.new(0.0387323946, 0, 0.0625, 0)
                DropDownInner.Size = UDim2.new(0, 270, 0, 98)
                DropDownInner.ScrollBarThickness = 10    

                UIListLay.Parent = DropDownInner
                UIListLay.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLay.Padding = UDim.new(0, 5)
            
                UIPadding.Parent = DropDownInner
                UIPadding.PaddingLeft = UDim.new(0, 10)

                spawn(function()
                    while true do
                        TS:Create(DropDownInner, TweenInfo.new(0.5), {CanvasSize = UDim2.new(0,0,0,UIListLay.AbsoluteContentSize.Y)}):Play()
                        wait(0.5)
                    end
                end)

                DropDownInner.ChildAdded:Connect(function()
                    TS:Create(DropDownInner, TweenInfo.new(0.5), {CanvasSize = UDim2.new(0,0,0,UIListLay.AbsoluteContentSize.Y)}):Play()
                end)

                DropDownInner.ChildRemoved:Connect(function()
                    TS:Create(DropDownInner, TweenInfo.new(0.5), {CanvasSize = UDim2.new(0,0,0,UIListLay.AbsoluteContentSize.Y)}):Play()
                end)

                            --// Scripts: // 

                local function IJDXUM_fake_script() -- expand_more.Script 
                   local script = Instance.new('LocalScript', expand_more)

                    local normal = true
                    local opened = false
                                
                    script.Parent.MouseButton1Click:Connect(function()
                        if normal == true then
                            script.Parent.Rotation = math.rad(10313.240312355)
                            script.Parent.Parent.Parent:TweenSize(UDim2.new(0, 306,0, 170), nil,nil,0.25)
                            script.Parent.Parent.Parent.DropDownOutline.Visible = true
                            wait(0.25)
                            normal = false
                            opened = true
                                        
                        elseif normal == false then
                            script.Parent.Rotation = math.rad(0)
                            script.Parent.Parent.Parent:TweenSize(UDim2.new(0, 306,0, 45), nil,nil,0.25)
                            script.Parent.Parent.Parent.DropDownOutline.Visible = false
                            wait(0.25)
                            normal = true
                            opened = false
                        end
                    end)
                 end
                coroutine.wrap(IJDXUM_fake_script)()

                function Elements:CreateDropDownBtn(name,callback)
                    callback = callback or function() end

                    name = name or "Button"

                    local Button1 = Instance.new("TextButton")
                    local ButtonOutline1 = Instance.new("ImageLabel")
                    local Circle = Instance.new("ImageLabel")

                    Button1.Name = "Button"
                    Button1.Parent = DropDownInner
                    Button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Button1.BackgroundTransparency = 1.000
                    Button1.BorderSizePixel = 0
                    Button1.Position = UDim2.new(0, 0, 0.0714285746, 0)
                    Button1.Size = UDim2.new(0, 237, 0, 38)
                    Button1.ZIndex = 3
                    Button1.Font = Enum.Font.Merriweather
                    Button1.TextColor3 = Color3.fromRGB(192, 192, 192)
                    Button1.TextSize = 20.000
                    Button1.Text = name
                    Button1.MouseButton1Click:Connect(function()
                        pcall(callback)
                        CircleClick(Button1,Mouse.X,Mouse.Y)
                    end)

                   ButtonOutline1.Name = "ButtonOutline"
                   ButtonOutline1.Parent = Button1
                   ButtonOutline1.Active = true
                   ButtonOutline1.AnchorPoint = Vector2.new(0.5, 0.5)
                   ButtonOutline1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                   ButtonOutline1.BackgroundTransparency = 1.000
                   ButtonOutline1.Position = UDim2.new(0.503573, 0, 0.489426464, 0)
                   ButtonOutline1.Selectable = true
                   ButtonOutline1.Size = UDim2.new(0, 237, 0, 37)
                   ButtonOutline1.Image = "rbxassetid://3570695787"
                   ButtonOutline1.ImageColor3 = Color3.fromRGB(30, 32, 36)
                   ButtonOutline1.ScaleType = Enum.ScaleType.Slice
                   ButtonOutline1.SliceCenter = Rect.new(100, 100, 100, 100)
                   ButtonOutline1.SliceScale = 0.120

                end

                function Elements:CreateDropDownToggle(text,callback)
                    callback = callback or function() end
                                    
                    local DropToggle = Instance.new("ImageLabel")
                    local TextLabel = Instance.new("TextLabel")
                    local ToggleB = Instance.new("ImageLabel")
                    local Circle = Instance.new("ImageLabel")
                    local CircleB = Instance.new("TextButton")
                    local CircleBR = Instance.new("ImageLabel")
                    local enabled = false
                    local debounce2 = false


                    DropToggle.Name = "DropToggle"
                    DropToggle.Parent = DropDownInner
                    DropToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    DropToggle.BackgroundTransparency = 1.000
                    DropToggle.Size = UDim2.new(0, 237, 0, 37)
                    DropToggle.Image = "rbxassetid://3570695787"
                    DropToggle.ImageColor3 = Color3.fromRGB(30, 32, 36)
                    DropToggle.ScaleType = Enum.ScaleType.Slice
                    DropToggle.SliceCenter = Rect.new(100, 100, 100, 100)
                    DropToggle.SliceScale = 0.120

                    TextLabel.Parent = DropToggle
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.BackgroundTransparency = 1.000
                    TextLabel.Position = UDim2.new(0.0653593838, 0, 0, 0)
                    TextLabel.Size = UDim2.new(0, 144, 0, 40)
                    TextLabel.Font = Enum.Font.Merriweather
                    TextLabel.Text = text
                    TextLabel.TextColor3 = Color3.fromRGB(192, 192, 192)
                    TextLabel.TextSize = 20.000

                    ToggleB.Name = "ToggleB"
                    ToggleB.Parent = DropToggle
                    ToggleB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ToggleB.BackgroundTransparency = 1.000
                    ToggleB.Position = UDim2.new(0, 153, 0, 7)
                    ToggleB.Size = UDim2.new(0, 64, 0, 25)
                    ToggleB.Image = "rbxassetid://3570695787"
                    ToggleB.ImageColor3 = Color3.fromRGB(176, 176, 176)
                    ToggleB.ScaleType = Enum.ScaleType.Slice
                    ToggleB.SliceCenter = Rect.new(100, 100, 100, 100)
                    ToggleB.SliceScale = 0.120

                    Circle.Name = "Circle"
                    Circle.Parent = ToggleB
                    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Circle.BackgroundTransparency = 1.000
                    Circle.Position = UDim2.new(0.0599999987, 0, 0.0416666679, 0)
                    Circle.Size = UDim2.new(0, 21, 0, 22)
                    Circle.Image = "rbxassetid://3570695787"
                    Circle.ScaleType = Enum.ScaleType.Slice
                    Circle.SliceCenter = Rect.new(100, 100, 100, 100)
                    Circle.SliceScale = 0.120

                    CircleB.Name = "CircleB"
                    CircleB.Parent = Circle
                    CircleB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    CircleB.BackgroundTransparency = 1.000
                                    CircleB.BorderSizePixel = 0
                                    CircleB.Size = UDim2.new(0, 21, 0, 22)
                                    CircleB.Font = Enum.Font.SourceSans
                                    CircleB.Text = ""
                                    CircleB.TextColor3 = Color3.fromRGB(0, 0, 0)
                                    CircleB.TextSize = 14.000
                                    CircleB.MouseButton1Click:Connect(function()
                                        if enabled == false then
                                            debounce2 = true
                                            TS:Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0.6, 0,0.042, 0)}):Play()
                                            TS:Create(ToggleB,TweenInfo.new(0.25),{ImageColor3 = Color3.fromRGB(26, 176, 109)}):Play()
                                            wait(0.25)
                                            debounce2 = false
                                            enabled = not enabled
                                            pcall(callback,enabled)
                                        elseif enabled then
                                            debounce2 = true
                                            TS:Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0.066, 0,0.042, 0)}):Play()
                                            TS:Create(ToggleB,TweenInfo.new(0.25),{ImageColor3 = Color3.fromRGB(176, 176, 176)}):Play()
                                            wait(0.25)
                                            debounce2 = false
                                            enabled = not enabled
                                            pcall(callback,enabled)
                                        end
                                    end)

                    CircleBR.Name = "CircleBR"
                    CircleBR.Parent = CircleB
                    CircleBR.Active = true
                    CircleBR.AnchorPoint = Vector2.new(0.5, 0.5)
                    CircleBR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    CircleBR.BackgroundTransparency = 1.000
                    CircleBR.Position = UDim2.new(0.5, 0, 0.5, 0)
                    CircleBR.Selectable = true
                    CircleBR.Size = UDim2.new(1, 0, 1, 0)
                    CircleBR.Image = "rbxassetid://3570695787"
                    CircleBR.ScaleType = Enum.ScaleType.Slice
                    CircleBR.SliceCenter = Rect.new(100, 100, 100, 100)
                    CircleBR.SliceScale = 0.120
                end
            end

            function Elements:CreateTP()

            local TextBoxButtonBack = Instance.new("ImageLabel")
            local TextBox = Instance.new("TextBox")
            local ButtonText = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local Players = game:GetService("Players")
            local plr = Players.LocalPlayer
            local TextBoxRound = Instance.new("UICorner")


            TextBoxRound.Parent = TextBox   


            UICorner.Parent = ButtonText


            TextBoxButtonBack.Name = "TextBoxButtonBack"
            TextBoxButtonBack.Parent = TabContainer
            TextBoxButtonBack.Active = true
            TextBoxButtonBack.AnchorPoint = Vector2.new(0.5, 0.5)
            TextBoxButtonBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxButtonBack.BackgroundTransparency = 1.000
            TextBoxButtonBack.Position = UDim2.new(-0.0700000003, 0, -2.70000005, 0)
            TextBoxButtonBack.Selectable = true
            TextBoxButtonBack.Size = UDim2.new(0, 306, 0, 40)
            TextBoxButtonBack.Image = "rbxassetid://3570695787"
            TextBoxButtonBack.ImageColor3 = Color3.fromRGB(30, 32, 36)
            TextBoxButtonBack.ScaleType = Enum.ScaleType.Slice
            TextBoxButtonBack.SliceCenter = Rect.new(100, 100, 100, 100)
            TextBoxButtonBack.SliceScale = 0.120

            TextBox.Parent = TextBoxButtonBack
            TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            TextBox.BorderSizePixel = 0
            TextBox.Position = UDim2.new(0.0500000007, 0, 0.125, 0)
            TextBox.Size = UDim2.new(0, 145, 0, 30)
            TextBox.Font = Enum.Font.Merriweather
            TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
            TextBox.PlaceholderText = "Name"
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
            TextBox.TextSize = 20.000
            TextBox.FocusLost:Connect(function()
                for i,v in pairs(Players:GetChildren()) do
                    if (string.sub(string.lower(v.Name),1,string.len(TextBox.Text))) == string.lower(TextBox.Text) then
                        if v.Name ~= plr.Name then
                            TextBox.Text = v.Name
                        end
                    end
                end
            end)

            ButtonText.Name = "ButtonText"
            ButtonText.Parent = TextBoxButtonBack
            ButtonText.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            ButtonText.BorderSizePixel = 0
            ButtonText.Position = UDim2.new(0.566666663, 0, 0.100000001, 0)
            ButtonText.Size = UDim2.new(0, 120, 0, 31)
            ButtonText.ZIndex = 10
            ButtonText.Font = Enum.Font.Merriweather
            ButtonText.Text = "Teleport"
            ButtonText.TextColor3 = Color3.fromRGB(192, 192, 192)
            ButtonText.TextSize = 20.000
            ButtonText.MouseButton1Click:Connect(function()
                local arg = TextBox
                local plr = Players.LocalPlayer.Character.HumanoidRootPart
                local person = Players[arg.Text].Character.HumanoidRootPart
                plr.CFrame = person.CFrame
            end)
            
            end
            function Elements:CreateKeyBind(name,placeholder)
            
            name = name or "Toggle Gui"
		placeholder = placeholder or "Key"

            local ToggleGUI = Instance.new("ImageLabel")
            local TBLabel = Instance.new("TextLabel")
            local TextBox = Instance.new("TextBox")

            ToggleGUI.Name = "ToggleGUI"
            ToggleGUI.Parent = TabContainer
            ToggleGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleGUI.BackgroundTransparency = 1.000
            ToggleGUI.Size = UDim2.new(0, 306, 0, 40)
            ToggleGUI.Image = "rbxassetid://3570695787"
            ToggleGUI.ImageColor3 = Color3.fromRGB(30, 32, 36)
            ToggleGUI.ScaleType = Enum.ScaleType.Slice
            ToggleGUI.SliceCenter = Rect.new(100, 100, 100, 100)
            ToggleGUI.SliceScale = 0.120

            TBLabel.Name = "TBLabel"
            TBLabel.Parent = ToggleGUI
            TBLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TBLabel.BackgroundTransparency = 1.000
            TBLabel.Position = UDim2.new(0.09150327, 0, 0.0250000004, 0)
            TBLabel.Size = UDim2.new(0, 148, 0, 40)
            TBLabel.Font = Enum.Font.Merriweather
            TBLabel.Text = name
            TBLabel.TextColor3 = Color3.fromRGB(192, 192, 192)
            TBLabel.TextSize = 20.000

            TextBox.Parent = ToggleGUI
            TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            TextBox.BorderSizePixel = 0
            TextBox.Position = UDim2.new(0.618627429, 0, 0.125, 0)
            TextBox.Size = UDim2.new(0, 101, 0, 30)
            TextBox.Font = Enum.Font.Merriweather
            TextBox.PlaceholderColor3 = Color3.fromRGB(192, 192, 192)
            TextBox.PlaceholderText = placeholder
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(192, 192, 192)
            TextBox.TextSize = 23

            -- Scripts:

            local function JTSSYPH_fake_script() -- TextBox.LocalScript 
                local script = Instance.new('LocalScript', TextBox)

                local Main = script.Parent.Parent.Parent.Parent.Parent
                local mouse = game:GetService('Players').LocalPlayer:GetMouse()
                mouse.KeyDown:connect(function(key)
                    key = key:lower()
                        local v = script.Parent.Text
                    if key == v then 
                        Main.Visible = not Main.Visible 
                    end
                end)
                
            end
            coroutine.wrap(JTSSYPH_fake_script)()
            end
            return Elements
        end
        return Sections
    end
    return AwesomeTabs
end
return library
