script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]

	if player.character == nil then return end

	player.get_inventory(defines.inventory.character_main).clear()
	player.get_inventory(defines.inventory.character_guns).clear()
	player.get_inventory(defines.inventory.character_ammo).clear()

	local items = {
		-- resources
		{"coal", 150},
		{"iron-plate", 250},
		{"copper-plate", 250},
		{"iron-gear-wheel", 100},
		{"electronic-circuit", 100},
		-- belts
		{"transport-belt", 200},
		{"underground-belt", 20},
		{"splitter", 5},
		-- pipes
		{"pipe-to-ground", 10},
		{"pipe", 20},
		-- other logistic
		{"inserter", 25},
		{"iron-chest", 10},
		-- buildings
		{"assembling-machine-1", 10},
		{"electric-mining-drill", 10},
        -- electricity
        {"small-electric-pole", 50},
		{"boiler", 5},
		{"steam-engine", 5},
		{"offshore-pump", 1},
	}

	for k,v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end
end)