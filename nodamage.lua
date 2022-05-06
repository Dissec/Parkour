local b=workspace:WaitForChild("joao706"):WaitForChild("HumanoidRootPart")

while wait(0.001) do
    if b.Velocity.y < -75 and _G.enabled then
        keypress(0xA0)
        wait(.001)
        print("fall")
        local part = Instance.new("Part")
        part.Size = Vector3.new(6, 1, 6)
        part.Transparency = 1
        part.Position = workspace.joao706.HumanoidRootPart.Position - Vector3.new(0, 2.5, 0)
        part.Anchored = true
        part.Parent = workspace
        wait(0.001)
        keyrelease(0xA0)
        wait(0.05)
        part:Destroy()
    end
end
