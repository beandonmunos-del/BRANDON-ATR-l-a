local autoFarm = true

-- Buscar objeto por nombre
local function findObj(name)
	for _, obj in pairs(workspace:GetDescendants()) do
		if obj.Name == name and obj:IsA("BasePart") then
			return obj
		end
	end
end

-- Clic con ClickDetector
local function clickObj(obj)
	if not obj then return end
	for _, v in pairs(obj:GetDescendants()) do
		if v:IsA("ClickDetector") then
			fireclickdetector(v)
			return
		end
	end
end

-- Click objeto + interactuar
local function clickAndInteract(name)
	clickObj(findObj(name))
	task.wait(0.4)
	clickObj(findObj("Interactuar"))
end

-- Loop autofarm
task.spawn(function()
	while autoFarm do
		clickAndInteract("Agua")
		task.wait(20)

		clickAndInteract("Azúcar")
		clickAndInteract("Gelatina")
		task.wait(50)

		clickAndInteract("BolsaVacía")
		task.wait(5)
	end
end)
