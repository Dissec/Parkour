
local space = 0x20
local l = workspace.joao706.HumanoidRootPart
local c = workspace.Camera
local w = 0x57
local shift = 0xA0
repeat task.wait() until isrbxactive()
function weit()
    l.CFrame = CFrame.new(696.573853, 312.603882, 505.569427, 0.999530494, -1.94660039e-08, -0.030640224, 1.96131413e-08, 1, 4.50154047e-09, 0.030640224, -5.1003779e-09, 0.999530494)
    c.CFrame = CFrame.new(696.573853, 312.603882, 505.569427, 0.999530494, -1.94660039e-08, -0.030640224, 1.96131413e-08, 1, 4.50154047e-09, 0.030640224, -5.1003779e-09, 0.999530494)
    keypress(w)
    wait(1.5)
    keyrelease(w)
end
wait(2)
for i = 1, 4 do
    l.Velocity = Vector3.new(0, 0, 0)
    l.Velocity = Vector3.new(255, 0, 0)
    l.CFrame = CFrame.new(600, 312, 500, 0.0255457312, 3.4619756e-09, -0.999673665, -4.58374529e-08, 1, 2.29177211e-09, 0.999673665, 4.57639473e-08, 0.0255457312)
    c.CFrame = CFrame.new(600, 312, 500, 0.0255457312, 5.11330001e-09, -0.999673665, -6.77064236e-08, 1, 3.38479467e-09, 0.999673665, 6.75978598e-08, 0.0255457312)
    wait(.05)
    keypress(shift)
    keypress(space)
    wait(.25)
    keyrelease(shift)
    keyrelease(space)
    wait(.3)
    weit()
end
for i = 1, 4 do
    l.Velocity = Vector3.new(0, 0, 0)
    l.Velocity = Vector3.new(255, 0, 0)
    l.CFrame = CFrame.new(600, 312, 191, 0.0255457312, 3.4619756e-09, -0.999673665, -4.58374529e-08, 1, 2.29177211e-09, 0.999673665, 4.57639473e-08, 0.0255457312)
    c.CFrame = CFrame.new(600, 312, 191, 0.0255457312, 5.11330001e-09, -0.999673665, -6.77064236e-08, 1, 3.38479467e-09, 0.999673665, 6.75978598e-08, 0.0255457312)
    wait(.05)
    keypress(shift)
    keypress(space)
    wait(.25)
    keyrelease(shift)
    keyrelease(space)
    wait(.3)
    weit()
end
