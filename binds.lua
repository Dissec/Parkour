local space = 0x20
function wallkick()
    mousemoverel(-1000, 0)
    keypress(space)
    wait(0.005)
    keyrelease(space)
    wait(0.005)
    mousemoverel(1000, 0)
    wait()
    keypress(space)
    wait(0.005)
    keyrelease(space)
    wait(0.005)
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
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

Mouse.KeyDown:connect(function(func)

local key = func:lower()    

if key == "2" then
    repeat
    task.wait()
    until isrbxactive()
    wallboost()
end
if key == "3" then
    repeat
    task.wait()
    until isrbxactive()
    wallkick()
end
end)
