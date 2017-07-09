function mply:SetSCP035()
	self.handsmodel = nil
	self:UnSpectate()
	self:GodDisable()
	self:Spawn()
	self:SetPos(SPAWN_049)
	self:StripWeapons()
	self:RemoveAllAmmo()
	self:SetTeam(TEAM_SCP)
	self:SetNClass(ROLE_SCP035)
	self:SetModel("models/vinrax/props/scp035/035_mask.mdl")
	self:SetHealth(2000)
	self:SetMaxHealth(2000)
	self:SetArmor(0)
	self:SetWalkSpeed(10)
	self:SetRunSpeed(10)
	self:SetMaxSpeed(10)
	self:SetJumpPower(200)
	self:SetNoDraw(false)
	self:SetNoCollideWithTeammates(false)
	self.Active = true
	self:SetupHands()
	self.canblink = false
	self:AllowFlashlight( true )
	self.WasTeam = TEAM_SCP
	self:SetNoTarget( true )
	self.BaseStats = nil
	self.UsingArmor = nil
	
	timer.Create('Think_035', 1, 0, function()
		if (self:Alive()) then
		
			for k,v in pairs(player.GetAll()) do
			
				if v:GetEyeTrace().Entity == self then
					self:Freeze(true)
					self:PrintMessage( HUD_PRINTTALK, 'Oh darn, '..v:Nick()..' has looked at you, feel embarrased!' )
				end
				
			end
			
		end
	end)
	
end