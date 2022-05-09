local space = 0x20
local shift = 0xA0
local q = 0x51
local player = game.Players.LocalPlayer.Name
local rootpart = workspace[player].HumanoidRootPart
function wallkick()
    keypress(q)
    keypress(space)
    wait(0.15)
    keyrelease(q)
    keyrelease(space)
    rootpart.Velocity = rootpart.Velocity * Vector3.new(1.35, 0, 1.35)
end
function wallboost()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(1000, 0)
    wait()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(-1000, 0)
end
function reset()
    local part = Instance.new("Part")
    part.Size = Vector3.new(6, 1, 6)
    part.Transparency = 1
    part.Anchored = true
    part.Position = rootpart.Position - Vector3.new(0, 1.6, 0)
    part.Parent = workspace
    wait(10)
    part:Destroy()
end
function dash()
    local name = game.Players.LocalPlayer.Name
    local rootpart = workspace[name].HumanoidRootPart
    local rotation = game.Workspace.CurrentCamera.CFrame.LookVector
    rootpart.Velocity = Vector3.new(rotation.x, 0, rotation.z) * 120
    game.Workspace.Gravity = 5
    wait(.3)
    game.Workspace.Gravity = 75
end
if key == "e" then
    repeat
    task.wait()
    until isrbxactive()
    wallboost()
end
if key == "f" then
    repeat
    task.wait()
    until isrbxactive()
    wallkick()
end
if key == "r" then
    reset()
end
if key == "3" then
    rootpart.Velocity = rootpart.Velocity * Vector3.new(1.3, 1.3, 1.3)
end
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:connect(function(func)

local key = func:lower()
if key == "q" then
    dash()
end
end)
