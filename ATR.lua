game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local dinero = Instance.new("IntValue")
	dinero.Name = "Dinero"
	dinero.Value = 100
	dinero.Parent = leaderstats
end)
