local blips = {
	{title="adı", colour=7, id=215, coords = vector3(11.11, 11.11, 11.11)},--burayı kendinize göre ayarlayabilirsiniz
  }
  
       local state = false
  RegisterCommand('blipac',function()
	state = not state
	  for _, info in pairs(blips) do
		if state then
		  info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
		  SetBlipSprite(info.blip, info.id)
		  SetBlipDisplay(info.blip, 4)
		  SetBlipScale(info.blip, 0.5)
		  SetBlipColour(info.blip, info.colour)
		  SetBlipAsShortRange(info.blip, true)
		  BeginTextCommandSetBlipName("STRING")
		  AddTextComponentString(info.title)
		  EndTextCommandSetBlipName(info.blip)
		else
		  RemoveBlip(info.blip)
	  end
	end
  end)