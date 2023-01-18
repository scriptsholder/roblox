-- Remade Gui Of JackMcJagger15's "Fling/Kill Gui".
-- Instances:
local FlingGui = Instance.new("ScreenGui")
local Bar1 = Instance.new("Frame")
local Bar2 = Instance.new("Frame")
local Main = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local StartKill = Instance.new("TextButton")
local StopKill = Instance.new("TextButton")
local Instructions = Instance.new("TextLabel")
local PowerWindow = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Mini = Instance.new("TextButton")
local Max = Instance.new("TextButton")
local Menu = Instance.new("Frame")
local CurrentPower = Instance.new("TextLabel")
local DownArrow = Instance.new("TextButton")
local UPArrow = Instance.new("TextButton")
local Recommendation = Instance.new("TextLabel")
--Properties:
FlingGui.Name = "FlingGui"
FlingGui.Parent = game.CoreGui
FlingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Bar1.Name = "Bar1"
Bar1.Parent = FlingGui
Bar1.Active = true
Bar1.Draggable = true
Bar1.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Bar1.BorderSizePixel = 0
Bar1.Position = UDim2.new(0.771875024, 0, 0.331481487, 0)
Bar1.Size = UDim2.new(0, 411, 0, 43)

Bar2.Name = "Bar2"
Bar2.Parent = Bar1
Bar2.BackgroundColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
Bar2.BorderSizePixel = 0
Bar2.Position = UDim2.new(-0.00119751692, 0, 0.993540049, 0)
Bar2.Size = UDim2.new(0, 411, 0, 9)

Main.Name = "Main"
Main.Parent = Bar1
Main.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.000809643941, 0, 1.20056009, 0)
Main.Size = UDim2.new(0, 411, 0, 358)

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(-0.0024330914, 0, 0.905027986, 0)
Credits.Size = UDim2.new(0, 354, 0, 34)
Credits.Font = Enum.Font.GothamSemibold
Credits.Text = "Gui By Aruroso, script by JackMcJagger15"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true

StartKill.Name = "StartKill"
StartKill.Parent = Main
StartKill.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
StartKill.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
StartKill.BorderSizePixel = 5
StartKill.Position = UDim2.new(0.175182477, 0, 0.388268143, 0)
StartKill.Size = UDim2.new(0, 267, 0, 80)
StartKill.Font = Enum.Font.GothamSemibold
StartKill.Text = "Start Flingin!"
StartKill.TextColor3 = Color3.new(1, 1, 1)
StartKill.TextScaled = true
StartKill.TextSize = 14
StartKill.TextStrokeColor3 = Color3.new(1, 1, 1)
StartKill.TextWrapped = true
power = 500
active = false
local val = Instance.new("IntValue")
val.Name = "Number"
val.Parent = game.Players.LocalPlayer
val.Value = 5

Exit.MouseButton1Click:connect(function()
FlingGui.Enabled = false
end)

StartKill.MouseButton1Click:connect(function()
game:GetService('RunService').Stepped:connect(function()
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
else
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end
end
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
StopKill.Name = "StopKill"
StopKill.Parent = Main
StopKill.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
StopKill.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
StopKill.BorderSizePixel = 5
StopKill.Position = UDim2.new(0.238442808, 0, 0.648044705, 0)
StopKill.Size = UDim2.new(0, 215, 0, 41)
StopKill.Font = Enum.Font.GothamSemibold
StopKill.Text = "Stop Flingin ;c"
StopKill.TextColor3 = Color3.new(1, 1, 1)
StopKill.TextScaled = true
StopKill.TextSize = 14
StopKill.TextStrokeColor3 = Color3.new(1, 1, 1)
StopKill.TextWrapped = true
StopKill.MouseButton1Click:connect(function()
active = false
game.Players.LocalPlayer.Character.HumanoidRootPart.BodyThrust:Remove()
end)

Instructions.Name = "Instructions"
Instructions.Parent = Main
Instructions.BackgroundColor3 = Color3.new(1, 1, 1)
Instructions.BackgroundTransparency = 1
Instructions.Position = UDim2.new(0.068126522, 0, 0.064245902, 0)
Instructions.Size = UDim2.new(0, 354, 0, 81)
Instructions.Font = Enum.Font.GothamSemibold
Instructions.Text = "Touch People and watch them fling off the map!"
Instructions.TextColor3 = Color3.new(1, 1, 1)
Instructions.TextScaled = true
Instructions.TextSize = 14
Instructions.TextWrapped = true

PowerWindow.Name = "PowerWindow"
PowerWindow.Parent = Main
PowerWindow.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PowerWindow.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
PowerWindow.BorderSizePixel = 5
PowerWindow.Position = UDim2.new(0.343065679, 0, 0.80726254, 0)
PowerWindow.Size = UDim2.new(0, 128, 0, 41)
PowerWindow.Font = Enum.Font.GothamSemibold
PowerWindow.Text = "Power"
PowerWindow.TextColor3 = Color3.new(1, 1, 1)
PowerWindow.TextScaled = true
PowerWindow.TextSize = 14
PowerWindow.TextStrokeColor3 = Color3.new(1, 1, 1)
PowerWindow.TextWrapped = true
PowerWindow.MouseButton1Click:connect(function()
 Menu.Visible = not Menu.Visible
end)

Exit.Name = "Exit"
Exit.Parent = Bar1
Exit.BackgroundColor3 = Color3.new(1, 0, 0)
Exit.BackgroundTransparency = 1
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.888804913, 0, 0, 0)
Exit.Size = UDim2.new(0, 45, 0, 42)
Exit.Font = Enum.Font.GothamSemibold
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1.39216, 1.39216, 1.39216)
Exit.TextScaled = true
Exit.TextSize = 14
Exit.TextWrapped = true
Exit.MouseButton1Down:connect(function()
	Bar1.Visible = false
	Menu.Visible = false
end)

Title.Name = "Title"
Title.Parent = Bar1
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 200, 0, 35)
Title.Font = Enum.Font.Antique
Title.Text = "Fling Gui"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Mini.Name = "Mini"
Mini.Parent = Bar1
Mini.BackgroundColor3 = Color3.new(1, 0, 0)
Mini.BackgroundTransparency = 1
Mini.BorderSizePixel = 0
Mini.Position = UDim2.new(0.779315829, 0, 0, 0)
Mini.Size = UDim2.new(0, 45, 0, 42)
Mini.Font = Enum.Font.GothamSemibold
Mini.Text = "-"
Mini.TextColor3 = Color3.new(1.39216, 1.39216, 1.39216)
Mini.TextScaled = true
Mini.TextSize = 14
Mini.TextWrapped = true
Mini.MouseButton1Down:connect(function()
	Main.Visible = false
	Mini.Visible = false
	Max.Visible = true
end)

Max.Name = "Max"
Max.Parent = Bar1
Max.BackgroundColor3 = Color3.new(1, 0, 0)
Max.BackgroundTransparency = 1
Max.BorderSizePixel = 0
Max.Position = UDim2.new(0.779315829, 0, 0, 0)
Max.Size = UDim2.new(0, 45, 0, 42)
Max.Visible = false
Max.Font = Enum.Font.GothamSemibold
Max.Text = "+"
Max.TextColor3 = Color3.new(1.39216, 1.39216, 1.39216)
Max.TextScaled = true
Max.TextSize = 14
Max.TextWrapped = true
Max.MouseButton1Down:connect(function()
	Main.Visible = true
	Mini.Visible = true
	Max.Visible = false
end)

Menu.Name = "Menu"
Menu.Parent = Bar1
Menu.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(-0.681346297, 0, 0, 0)
Menu.Size = UDim2.new(0, 255, 0, 409)
Menu.Visible = false

CurrentPower.Name = "CurrentPower"
CurrentPower.Parent = Menu
CurrentPower.BackgroundColor3 = Color3.new(1, 1, 1)
CurrentPower.BackgroundTransparency = 1
CurrentPower.Position = UDim2.new(0.0901960805, 0, 0.105134472, 0)
CurrentPower.Size = UDim2.new(0, 209, 0, 50)
CurrentPower.Font = Enum.Font.GothamSemibold
CurrentPower.Text = "Current Power = 5"
CurrentPower.TextColor3 = Color3.new(1, 1, 1)
CurrentPower.TextScaled = true
CurrentPower.TextSize = 14
CurrentPower.TextWrapped = true

DownArrow.Name = "DownArrow"
DownArrow.Parent = Menu
DownArrow.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
DownArrow.BorderSizePixel = 0
DownArrow.Position = UDim2.new(0.0235294122, 0, 0.207823962, 0)
DownArrow.Size = UDim2.new(0, 130, 0, 42)
DownArrow.Font = Enum.Font.SourceSans
DownArrow.Text = "<"
DownArrow.TextColor3 = Color3.new(1, 1, 1)
DownArrow.TextScaled = true
DownArrow.TextSize = 14
DownArrow.TextWrapped = true
DownArrow.MouseButton1Click:connect(function()
power = power - 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value - 1
CurrentPower.Text = "Current Power = " .. game.Players.LocalPlayer.Number.Value
end)

UPArrow.Name = "UPArrow"
UPArrow.Parent = Menu
UPArrow.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
UPArrow.BorderSizePixel = 0
UPArrow.Position = UDim2.new(0.533333361, 0, 0.207823962, 0)
UPArrow.Size = UDim2.new(0, 119, 0, 42)
UPArrow.Font = Enum.Font.SourceSans
UPArrow.Text = ">"
UPArrow.TextColor3 = Color3.new(1, 1, 1)
UPArrow.TextScaled = true
UPArrow.TextSize = 14
UPArrow.TextWrapped = true
UPArrow.MouseButton1Click:connect(function()
power = power + 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value + 1
CurrentPower.Text = "Current Power = " .. game.Players.LocalPlayer.Number.Value
end)

Recommendation.Name = "Recommendation"
Recommendation.Parent = Menu
Recommendation.BackgroundColor3 = Color3.new(1, 1, 1)
Recommendation.BackgroundTransparency = 1
Recommendation.Position = UDim2.new(0.0235294104, 0, 0.325183392, 0)
Recommendation.Size = UDim2.new(0, 242, 0, 31)
Recommendation.Font = Enum.Font.GothamSemibold
Recommendation.Text = "(Best Power is probably 5)"
Recommendation.TextColor3 = Color3.new(1, 1, 1)
Recommendation.TextScaled = true
Recommendation.TextSize = 14
Recommendation.TextWrapped = true
-- Scripts:
