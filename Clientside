events = game.ReplicatedStorage:WaitForChild("Events")
neutronevent = events:WaitForChild("NeutronEvent")
neutroneventtwo = events:WaitForChild("NeutronEventTwo")

spawn(function()
game["Run Service"].RenderStepped:Connect(function() -- funny renderstepped haha
	wait()
	if events and neutronevent and neutroneventtwo then
		-- all variables are not nil, run the anti ws/anti jp
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed > 16 then
				neutroneventtwo:FireServer()
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower > 50 then
				neutroneventtwo:FireServer()
			end
	end
	end)
end)

debouncemabob = false
spawn(function()
	game["Run Service"].RenderStepped:Connect(function() -- funny renderstepped haha 2x
		if debouncemabob then
			-- wait for debounce
		else
			debouncemabob = true
			oldpos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
			wait(1)
			newpos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
		if events and neutronevent and neutroneventtwo then
			neutronevent:fireServer(oldpos, newpos)
			end
			oldpos = nil
			newpos = nil
			debouncemabob = false
		end
		end)
end)
