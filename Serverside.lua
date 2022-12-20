game.ReplicatedStorage.Events.NeutronEvent.OnServerEvent:Connect(function(plr, oldpos, newpos)
getCharacter = function(plrmabob)
      if plrmabob.Character:FindFirstChild("HumanoidRootPart") then
        return plrmabob
        end
      end
    char = getCharacter(plr)
    if newpos.Y - oldpos.Y > 10 or newpos.Y - oldpos.Y < -10 then -- prob will error cuz i coded this on a school comouter lol
      char:MoveTo(oldpos) -- L lagback
      end
    end)
