local n = game.Players.LocalPlayer.Name
local l = workspace:WaitForChild(n).HumanoidRootPart
local c = workspace.Camera
local W = 0x57
local S = 0x53
local space = 0x20
local shift = 0xA0
function wallboost()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(1000, 0)
    wait()
    keypress(0x20)
    keyrelease(0x20)
    mousemoverel(-1000, 0)
end
repeat task.wait() until isrbxactive()
task.wait(2)
for i=1, 5 do
    for i = 1, 3 do
        mousemoverel(0, 3)
        wait(0.15)
        l.Velocity = Vector3.new(0, 0, 0)
        l.CFrame = CFrame.new(-408.030548, 312.399872, -144.26123, 0.021384079, 1.39761667e-07, 0.999771357, -2.41453768e-09, 1, -1.39741985e-07, -0.999771357, 5.74268078e-10, 0.021384079)
        c.CFrame = CFrame.new(-407.909271, 313.614838, -144.258636, 0.0213841405, 0.969900489, 0.242561087, 0, 0.242616564, -0.970122278, -0.999771357, 0.0207452308, 0.00518814614)
        wallboost()
    end
    for i = 1, 3 do
        mousemoverel(0, 3)
        wait(0.15)
        l.Velocity = Vector3.new(0, 0, 0)
        l.CFrame = CFrame.new(79.0337906, 189.999954, 142.530807, -0.999999821, -1.3036637e-10, -0.000603552209, -4.55949653e-11, 1, -1.40454148e-07, 0.000603552209, -1.40454105e-07, -0.999999821)
        c.CFrame = CFrame.new(79.0337296, 191.210281, 142.429703, -0.999999821, -0.000591211661, -0.000122070647, 0, 0.202210069, -0.979342282, 0.000603682362, -0.979342103, -0.202210024)
        wallboost()
    end
    for i = 1, 3 do
        keypress(W)
        l.Velocity = Vector3.new(0, -90, 0)
        l.CFrame = CFrame.new(700.250854, 341.902466, 180.352386, 0.74268651, -9.74532099e-08, 0.669639289, 6.54347048e-08, 1, 7.29582865e-08, -0.669639289, -1.03674838e-08, 0.74268651)
        c.CFrame = CFrame.new(700.250854, 341.902466, 180.352386, 0.74268651, -9.74532099e-08, 0.669639289, 6.54347048e-08, 1, 7.29582865e-08, -0.669639289, -1.03674838e-08, 0.74268651)
        wait(0.2)
        keypress(shift)
        wait(.1)
        keyrelease(shift)
    end
    wait(.3)
    for i = 1, 3 do
        wait(.1)
        keyrelease(W)
        l.Velocity = Vector3.new(255, 0, 0)
        l.CFrame = CFrame.new(600, 313, 500, 0.0255457312, 3.4619756e-09, -0.999673665, -4.58374529e-08, 1, 2.29177211e-09, 0.999673665, 4.57639473e-08, 0.0255457312)
        c.CFrame = CFrame.new(600, 313, 500, 0.0255457312, 5.11330001e-09, -0.999673665, -6.77064236e-08, 1, 3.38479467e-09, 0.999673665, 6.75978598e-08, 0.0255457312)
        wait(.05)
        keypress(shift)
        keypress(space)
        wait(.25)
        keyrelease(shift)
        keyrelease(space)
        wait(.3)
        l.Velocity = Vector3.new(0, 0, 0)
    end
end
