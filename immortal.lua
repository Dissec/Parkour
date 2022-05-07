game:GetService("RunService").Heartbeat:Connect(function()
    local pool = workspace.Pad.Pillow
    pool.Position = workspace.joao70006.HumanoidRootPart.Position - Vector3.new(0, 17, 0)
    pool.Size = Vector3.new(15, 15, 15)
    pool.Transparency = 1
end)
