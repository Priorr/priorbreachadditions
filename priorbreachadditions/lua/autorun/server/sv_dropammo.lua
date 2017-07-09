if (SERVER) then 
hook.Add( "PlayerDeath", "DropAmmo", function(ply)
whererthey = ply:GetPos()	
	arammo = ply:GetAmmoCount( "AR2" )
				if arammo >= 1 then 
			local assaultammo = ents.Create("item_rifleammo") 
				assaultammo:SetPos( whererthey )
				assaultammo:Spawn()
			end

	smgammo = ply:GetAmmoCount( "SMG1" )
			if smgammo >= 1 then 
				local submachineammo = ents.Create("item_smgammo") 
				submachineammo:SetPos( whererthey )
				submachineammo:Spawn()
			end	

	pisammo = ply:GetAmmoCount( "Pistol" )
		if pisammo >= 1 then 
			local pistolammo = ents.Create("item_pistolammo") 
				pistolammo:SetPos( whererthey )
				pistolammo:Spawn()
		end		
end)
end