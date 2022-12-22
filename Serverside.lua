if game.ReplicatedStorage:FindFirstChild("Events") then
	-- folder already exists
else
	-- create a new folder
	lol = Instance.new("Folder")
	lol.Name = "Events"
	lol.Parent = game.ReplicatedStorage
end

if game.ReplicatedStorage.Events:FindFirstChild("NeutronEvent") then
	-- remote already exists
else
	-- create a new remoteevent
	lol = Instance.new("RemoteEvent")
	lol.Name = "NeutronEvent"
	lol.Parent = game.ReplicatedStorage.Events
end
if game.ReplicatedStorage.Events:FindFirstChild("NeutronEventTwo") then
	-- remote already exists
else
	-- create a new remoteevent
	lol = Instance.new("RemoteEvent")
	lol.Name = "NeutronEventTwo"
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

game.ReplicatedStorage.Events.NeutronEventTwo.OnServerEvent:Connect(
	function(plr)
		getCharacter = function(plrmabob)
			if plrmabob.Character:FindFirstChild("HumanoidRootPart") then
				return plrmabob
			end
		end
		char = getCharacter(plr)
		char:FindFirstChild("Humanoid").WalkSpeed = 16
		char:FindFirstChild("Humanoid").JumpPower = 50
		for i, v in pairs(char:FindFirstChild("HumanoidRootPart"):GetChildren()) do
			if v:IsA("BodyGyro") then
				v:Destroy()
				end
			end
		-- default ws and jp
	end
)
