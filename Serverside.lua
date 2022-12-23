-- Made by Te1amon (https://github.com/Te1amon/NeutronRB)
-- TODO: Add clientsided checks

game.Players.PlayerAdded:Connect(
	function(plr)
		plr.CharacterAdded:Connect(
			function(char)
				--local pos = nil
				posx = nil
				posz = nil
				jumping = false
				hj_vl_level = 0
				xz_vl_level = 0
				debouncemabob = false
				posxyz = nil
				shouldlagbackandflag = true
				char.Humanoid.Jumping:Connect(
					function()
						jumping = true
					end
				)
				while wait() do
					spawn(
						function()
							if shouldlagbackandflag then
								-- already enabled
							else
								wait(3)
								shouldlagbackandflag = true
							end
						end
					)
					if jumping then
						-- dont set
					else
						posxyz = char.HumanoidRootPart.Position
					end
					spawn(
						function()
							-- x and z check
							if debouncemabob then
								-- dont run the check
							else
								debouncemabob = true
								posx = char.HumanoidRootPart.Position.X
								posz = char.HumanoidRootPart.Position.Z
								posxyz = char.HumanoidRootPart.Position
								wait(1)
								if
									char.HumanoidRootPart.Position.X - posx > 17 or
									char.HumanoidRootPart.Position.X - posx < -17
								then
									if xz_vl_level == 4 then
										plr:Kick("You were kicked by Neutron Cheat Detection for Speed")
									end
									if shouldlagbackandflag then
										char:MoveTo(posxyz)
										xz_vl_level = xz_vl_level + 1
										warn("NEUTRON ANTI-EXPLOIT - User " .. plr.Name .. " failed speed check")
										char.Humanoid.WalkSpeed = 0
										char.Humanoid.JumpPower = 0
										wait()
										char.Humanoid.WalkSpeed = 16
										char.Humanoid.JumpPower = 50
										-- reset ws and jp
										shouldlagbackandflag = false
									end
								end
								if
									char.HumanoidRootPart.Position.Z - posz > 17 or
									char.HumanoidRootPart.Position.Z - posz < -17
								then
									if xz_vl_level == 4 then
										plr:Kick("You were kicked by Neutron Cheat Detection for Speed")
									end
									if shouldlagbackandflag then
										char:MoveTo(posxyz)
										xz_vl_level = xz_vl_level + 1
										warn("NEUTRON ANTI-EXPLOIT - User " .. plr.Name .. " failed speed check")
										char.Humanoid.WalkSpeed = 0
										char.Humanoid.JumpPower = 0
										wait()
										char.Humanoid.WalkSpeed = 16
										char.Humanoid.JumpPower = 50
										-- reset ws and jp
										shouldlagbackandflag = false
									end
								end
								debouncemabob = false
							end
						end
					)
					if posxyz then
						if char.HumanoidRootPart.Position.Y - posxyz.Y > 9 then
							if hj_vl_level == 4 then
								plr:Kick("You were kicked by Neutron Cheat Detection for HighJump")
							end
							if shouldlagbackandflag then
								char:MoveTo(posxyz)
								warn("NEUTRON ANTI-EXPLOIT - User " .. plr.Name .. " failed highjump check")
								hj_vl_level = hj_vl_level + 1
								char.Humanoid.WalkSpeed = 0
								char.Humanoid.JumpPower = 0
								wait()
								char.Humanoid.WalkSpeed = 16
								char.Humanoid.JumpPower = 50
								-- reset ws and jp
								shouldlagbackandflag = false
							end
						end
					end
				end
			end
		)
	end
)
