if game.ReplicatedStorage.Events.NeutronEvent then
      -- remote already exists
      else
      -- create a nee remoteevent
lol = Instance.new("RemoteEvent")
lol.Name = "NeutronEvent"
lol.Parent = game.ReplicatedStorage.Events
      end

game.ReplicatedStorage.Events.NeutronEvent.OnServerEvent:Connect(function(plr, oldpos, newpos)
getCharacter = function(plrmabob)
      if plrmabob.Character:FindFirstChild("HumanoidRootPart") then
        return plrmabob
        end
      end
    char = getCharacter(plr)
    if newpos.Y - oldpos.Y > 10 then -- lets see if this works lol
      char:MoveTo(oldpos)
      end
    end)
