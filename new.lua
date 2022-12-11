function dropdash()
    keypress(0x20)
    wait(_G.dd)
    keyrelease(0x20)

    mousemoverel(1000, 0)

    keypress(0x20)
    wait(_G.dd)
    keyrelease(0x20)

    mousemoverel(-1000, 0)
end
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:connect(function(func)

local key = func:lower()
    if key == "f" then
        dropdash()
    end
end