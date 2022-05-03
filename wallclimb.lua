function wallboost()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(501, 0)
    wait()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(-500, 0)
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
end)
