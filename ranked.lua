local space = 0x20
local shift = 0xA0
local q = 0x51
function wallkick()
    keypress(q)
    keypress(space)
    wait(0.15)
    keyrelease(q)
    keyrelease(space)
    v = workspace.holy1one.HumanoidRootPart
    v.Velocity = v.Velocity * Vector3.new(1.35, 0, 1.35)
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
    part.Position = workspace.holy1ne.HumanoidRootPart.Position - Vector3.new(0, 1.6, 0)
    part.Parent = workspace
    wait(10)
    part:Destroy()
end

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

Mouse.KeyDown:connect(function(func)

local key = func:lower()    

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
    workspace.holy1ne.HumanoidRootPart.Velocity = workspace.holy1ne.HumanoidRootPart.Velocity * Vector3.new(1.3, 1.3, 1.3)
end
end)
game:GetService("RunService").Heartbeat:Connect(function()
    local pool = workspace.Pad.Pillow
    pool.Position = workspace.holy1ne.HumanoidRootPart.Position - Vector3.new(0, 17, 0)
    pool.Size = Vector3.new(15, 15, 15)
    pool.Transparency = 1
end)
