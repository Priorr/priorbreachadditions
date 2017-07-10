local pos1 = Vector( 1453.324219, 3792.717773, 519.527588 )
local pos2 = Vector( 4317.156738, 5420.831055, 1073.272705 )

if (SERVER) then 
	OrderVectors( pos1, pos2 )
	hook.Add( "PlayerSpray", "DisableSprayInPD", function( ply )
		if ply:GetPos():WithinAABox( pos1, pos2 ) then 
		ply:PrintMessage( 3, "[PBA] You cant spray in the Pocket Dimension.")
		return true end
	end)
end
