-- ServerScriptService → Script
game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"

	local dinero = Instance.new("IntValue", leaderstats)
	dinero.Name = "Dinero"
	dinero.Value = 0

	-- Auto farm legal: cada 5 segundos
	task.spawn(function()
		while player.Parent do
			task.wait(5)
			dinero.Value += 1000
		end
	end)
end)
