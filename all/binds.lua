local player = game.Players.LocalPlayer.Name
local rootpart = workspace:WaitForChild(player):WaitForChild("HumanoidRootPart")
function dash(power)
    local name = game.Players.LocalPlayer.Name
    local rootpart = workspace:WaitForChild(name):WaitForChild("HumanoidRootPart")
    local rotation = game.Workspace.CurrentCamera.CFrame.LookVector
    rootpart.Velocity = Vector3.new(rotation.x, 0, rotation.z) * power
    game.Workspace.Gravity = 5
    wait(.3)
    game.Workspace.Gravity = 75
end
function wallkick(power)
    keypress(0x20)
	wait(0.1)
	keyrelease(0x20)
	dash(power)
    rootpart.Velocity = rootpart.Velocity * Vector3.new(1.35, 0, 1.35)
end
function wallboost()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(1000, 0)
    wait(.06)
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(-1000, 0)
end
function reset()
	local player = game.Players.LocalPlayer.Name
	local rootpart = workspace:WaitForChild(player):WaitForChild("HumanoidRootPart")
	rootpart.Velocity = Vector3.new(0, 0, 0)
    local part = Instance.new("Part")
    part.Size = Vector3.new(6, 1, 6)
    part.Transparency = 1
    part.Anchored = true
    part.Position = rootpart.Position - Vector3.new(0, 1.6, 0)
    part.Parent = workspace
    keypress(0x20)
    wait()
    keyrelease(0x20)
    wait(.1)
    part:Destroy()
end
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:connect(function(func)

local key = func:lower()
if key == "r" then
    repeat
    task.wait()
    until isrbxactive()
    wallboost()
end
if key == "f" then
    repeat
    task.wait()
    until isrbxactive()
    wallkick(100)
end
if key == "c" then
    repeat
    task.wait()
    until isrbxactive()
    wallkick(140)
end
if key == "1" then
    reset()
end
end)
local name = game.Players.LocalPlayer.Name
game:GetService("RunService").Heartbeat:Connect(function()
    local pool = workspace.Pad.Pillow
    pool.Position = workspace:WaitForChild(name):WaitForChild("HumanoidRootPart").Position - Vector3.new(0, 17, 0)
    pool.Size = Vector3.new(15, 15, 15)
    pool.Transparency = 1
end)
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "PKr";
	Text = "Loaded";
	Duration = 5;
})