if game.ReplicatedStorage.Events then
    -- folder already exists
else
    -- create a new folder
    lol = Instance.new("Folder")
    lol.Name = "Events"
    lol.Parent = game.ReplicatedStorage
end

if game.ReplicatedStorage.Events.NeutronEvent then
    -- remote already exists
else
    -- create a new remoteevent
    lol = Instance.new("RemoteEvent")
    lol.Name = "NeutronEvent"
    lol.Parent = game.ReplicatedStorage.Events
end

wait()

game.ReplicatedStorage.Events.NeutronEvent.OnServerEvent:Connect(
    function(plr, oldpos, newpos)
        getCharacter = function(plrmabob)
            if plrmabob.Character:FindFirstChild("HumanoidRootPart") then
                return plrmabob
            end
        end
        char = getCharacter(plr)
        if newpos.Y - oldpos.Y > 10 then -- lets see if this works lol
            char:MoveTo(oldpos)
        end
    end
)
