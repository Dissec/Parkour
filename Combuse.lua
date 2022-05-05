local S = 0x53
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
for i = 1, 10000 do
    for i = 1, 10 do
        mousemoverel(0, 3)
        wait(0.03)
        workspace.joao706.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        workspace.joao706.HumanoidRootPart.CFrame = CFrame.new(-408.030548, 312.399872, -144.26123, 0.021384079, 1.39761667e-07, 0.999771357, -2.41453768e-09, 1, -1.39741985e-07, -0.999771357, 5.74268078e-10, 0.021384079)
        workspace.Camera.CFrame = CFrame.new(-407.909271, 313.614838, -144.258636, 0.0213841405, 0.969900489, 0.242561087, 0, 0.242616564, -0.970122278, -0.999771357, 0.0207452308, 0.00518814614)
        wallboost()
    end
    for i = 1, 10 do
        mousemoverel(0, 3)
        wait(0.03)
        workspace.joao706.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        workspace.joao706.HumanoidRootPart.CFrame = CFrame.new(79.0337906, 189.999954, 142.530807, -0.999999821, -1.3036637e-10, -0.000603552209, -4.55949653e-11, 1, -1.40454148e-07, 0.000603552209, -1.40454105e-07, -0.999999821)
        workspace.Camera.CFrame = CFrame.new(79.0337296, 191.210281, 142.429703, -0.999999821, -0.000591211661, -0.000122070647, 0, 0.202210069, -0.979342282, 0.000603682362, -0.979342103, -0.202210024)
        wallboost()
    end
end
