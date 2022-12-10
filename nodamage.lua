local player = game.Players.LocalPlayer.Name
_G.enabled = true

for i=1, 50 do
wait()
for _, v in pairs(workspace:WaitForChild(player):GetDescendants()) do
    if v:IsA("Part") then
        if v.Velocity.y < -50 then
            v.Velocity = Vector3.new(0, 0, 0)
        end
    end
end
end