-- Services
local Players = game:GetService("Players")

-- Variables
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

-- Private
local function dropdash()

    keypress(0x20)
    wait(_G.dd)
    keyrelease(0x20)

    mousemoverel(1000, 0)

    keypress(0x20)
    wait(_G.dd)
    keyrelease(0x20)

    mousemoverel(-1000, 0)
end

-- Public


Mouse.KeyDown:connect(function(Key)
    Key = Key:lower()

    if Key == "f" then
        dropdash()
    end
end)
