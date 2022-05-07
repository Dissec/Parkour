"""local space = 0x20
local shift = 0xA0
local q = 0x51
function wallkick()
    keypress(q)
    keypress(space)
    wait(0.15)
    keyrelease(q)
    keyrelease(space)
    v = workspace.joao706.HumanoidRootPart
    v.Velocity = v.Velocity * Vector3.new(1.2, 0, 1.2)
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
function cancel()
    keypress(q)
    wait(0.12)
    keyrelease(q)
    keypress(0x54)
    wait(0.08)
    keyrelease(0x54)
    wait()
    keypress(0x54)
    wait()
    keyrelease(0x54)
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
    repeat task.wait() until isrbxactive()
    cancel()
end
end)
"""
local space = 0x20
local shift = 0xA0
local q = 0x51
function wallkick()
    keypress(q)
    keypress(space)
    wait(0.15)
    keyrelease(q)
    keyrelease(space)
    v = workspace.joao70006.HumanoidRootPart
    v.Velocity = v.Velocity * Vector3.new(1.2, 0, 1.2)
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
    part.Position = workspace.joao70006.HumanoidRootPart.Position - Vector3.new(0, 1.6, 0)
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
    workspace.joao70006.HumanoidRootPart.Velocity = workspace.joao70006.HumanoidRootPart.Velocity * Vector3.new(1.3, 1.3, 1.3)
end
end)
