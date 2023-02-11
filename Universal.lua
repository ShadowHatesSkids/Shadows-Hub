--[[VARIABLES]]--
local ShadowHub = Instance.new("ScreenGui")
local BackgroundFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SelectionScroller = Instance.new("ScrollingFrame")
local MovementButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local MovementScroller = Instance.new("ScrollingFrame")
local WalkSpeed = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local JumpPower = Instance.new("TextLabel")
local TextBox_2 = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local TitleFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local BottomTitleFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local DragFrame = Instance.new("Frame")
local Plr = game:GetService("Players").LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char.Humanoid or Char:WaitForChild("Humanoid")

Plr.CharacterAdded:Connect(function(NewChar)
	Char = NewChar
	Hum = NewChar:WaitForChild("Humanoid")
end)

--[[BYPASSES]]--
for i,connection in pairs(getconnections(Hum:GetPropertyChangedSignal("WalkSpeed"))) do
	connection:Disable()
end

local mt = getrawmetatable(game)
local OldIndex = mt.__index
local OldNamecall = mt.__namecall
setreadonly(mt, false)

local OldWS = Hum.WalkSpeed
local OldJP = Hum.JumpPower

mt.__index = newcclosure(function(Self, Key, ...)
	if Self == Hum and Key == "WalkSpeed" then
		return OldWS
	elseif Self == Hum and Key == "JumpPower" then
		return OldJP
	end
	
	return OldIndex(Self, Key, ...)
end)

setreadonly(mt, true)



--[[MAKE GUI]]--

ShadowHub.Name = "ShadowHub"
ShadowHub.Parent = game.CoreGui
ShadowHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BackgroundFrame.Name = "BackgroundFrame"
BackgroundFrame.Parent = ShadowHub
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BackgroundFrame.Position = UDim2.new(0.0557939932, 0, 0.111111112, 0)
BackgroundFrame.Size = UDim2.new(0, 565, 0, 323)

UICorner.Parent = BackgroundFrame

SelectionScroller.Name = "SelectionScroller"
SelectionScroller.Parent = BackgroundFrame
SelectionScroller.Active = true
SelectionScroller.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectionScroller.BackgroundTransparency = 1.000
SelectionScroller.BorderSizePixel = 0
SelectionScroller.Position = UDim2.new(0, 0, 0.160990715, 0)
SelectionScroller.Size = UDim2.new(0, 221, 0, 270)

MovementButton.Name = "Movement Button"
MovementButton.Parent = SelectionScroller
MovementButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MovementButton.Position = UDim2.new(0.0814479664, 0, 0.0373406298, 0)
MovementButton.Size = UDim2.new(0, 174, 0, 75)
MovementButton.Font = Enum.Font.ArialBold
MovementButton.Text = "Movement"
MovementButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MovementButton.TextScaled = true
MovementButton.TextSize = 14.000
MovementButton.TextStrokeTransparency = 0.000
MovementButton.TextWrapped = true

UICorner_2.Parent = MovementButton

MovementScroller.Name = "MovementScroller"
MovementScroller.Parent = BackgroundFrame
MovementScroller.Active = true
MovementScroller.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MovementScroller.BackgroundTransparency = 1.000
MovementScroller.Position = UDim2.new(0.410619467, 0, 0.19504644, 0)
MovementScroller.Size = UDim2.new(0, 321, 0, 251)
MovementScroller.SizeConstraint = Enum.SizeConstraint.RelativeYY
MovementScroller.ScrollBarThickness = 0

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = MovementScroller
WalkSpeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WalkSpeed.BackgroundTransparency = 1.000
WalkSpeed.BorderSizePixel = 0
WalkSpeed.Position = UDim2.new(-0.00300498493, 0, 0.00421225373, 0)
WalkSpeed.Size = UDim2.new(0, 148, 0, 34)
WalkSpeed.Font = Enum.Font.ArialBold
WalkSpeed.Text = "Walkspeed"
WalkSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkSpeed.TextScaled = true
WalkSpeed.TextSize = 14.000
WalkSpeed.TextStrokeTransparency = 0.000
WalkSpeed.TextWrapped = true

TextBox.Parent = WalkSpeed
TextBox.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.297058105, 0, 1.20588231, 0)
TextBox.Size = UDim2.new(0, 59, 0, 31)
TextBox.Font = Enum.Font.ArialBold
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = "16"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextTransparency = 0.600
TextBox.TextWrapped = true

UICorner_3.Parent = TextBox

JumpPower.Name = "JumpPower"
JumpPower.Parent = MovementScroller
JumpPower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpPower.BackgroundTransparency = 1.000
JumpPower.BorderSizePixel = 0
JumpPower.Position = UDim2.new(0.476745784, 0, 0.00409987662, 0)
JumpPower.Size = UDim2.new(0, 168, 0, 34)
JumpPower.Font = Enum.Font.ArialBold
JumpPower.Text = "JumpPower"
JumpPower.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpPower.TextScaled = true
JumpPower.TextSize = 14.000
JumpPower.TextStrokeTransparency = 0.000
JumpPower.TextWrapped = true

TextBox_2.Parent = JumpPower
TextBox_2.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.29800123, 0, 1.17860603, 0)
TextBox_2.Size = UDim2.new(0, 66, 0, 31)
TextBox_2.Font = Enum.Font.ArialBold
TextBox_2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.Text = "50"
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextTransparency = 0.600
TextBox_2.TextWrapped = true

UICorner_4.Parent = TextBox_2

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = ShadowHub
TitleFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TitleFrame.Position = UDim2.new(0.0557939932, 0, 0.111111112, 0)
TitleFrame.Size = UDim2.new(0, 565, 0, 53)

UICorner_5.Parent = TitleFrame

BottomTitleFrame.Name = "BottomTitleFrame"
BottomTitleFrame.Parent = TitleFrame
BottomTitleFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
BottomTitleFrame.BorderSizePixel = 0
BottomTitleFrame.Position = UDim2.new(0, 0, 0.450637817, 0)
BottomTitleFrame.Size = UDim2.new(0, 565, 0, 29)

TextLabel.Parent = TitleFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 275, 0, 53)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "Shadows Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 0.600
TextLabel.TextWrapped = true

DragFrame.Name = "DragFrame"
DragFrame.Parent = TitleFrame
DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragFrame.BackgroundTransparency = 1.000
DragFrame.Size = UDim2.new(0, 565, 0, 52)

TextBox.Text = tostring(Hum.WalkSpeed)
TextBox_2.Text = tostring(Hum.JumpPower)

TextBoxOldText = TextBox.Text
TextBox_2OldText = TextBox_2.Text

TextBox.FocusLost:Connect(function(EnterPressed)
	if not EnterPressed then return end
	if typeof(tonumber(TextBox.Text)) == "number" then
		Hum.WalkSpeed = tonumber(TextBox.Text)
		TextBoxOldText = TextBox.Text
	else
		TextBox.Text = TextBoxOldText
	end
end)

TextBox_2.FocusLost:Connect(function(EnterPressed)
	if not EnterPressed then return end
	if typeof(tonumber(TextBox_2.Text)) == "number" then
		Hum.JumpPower = tonumber(TextBox_2.Text)
		TextBox_2OldText = TextBox_2.Text
	else
		TextBox_2.Text = TextBox_2OldText
	end
end)