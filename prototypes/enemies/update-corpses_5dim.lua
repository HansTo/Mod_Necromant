-- 5dim biters & spiters =======================================

-- ===== small biters ===
if data.raw.unit["5d-small-biter-laser"] then
	if data.raw.unit["5d-small-biter-laser"].loot == nil then 
		data.raw.unit["5d-small-biter-laser"].loot = {}
	end

	if data.raw.item["necro-small-biter-corpse"] then
		table.insert(data.raw.unit["5d-small-biter-laser"].loot, {  item = "necro-small-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-small-biter-explosive"] then
	if data.raw.unit["5d-small-biter-explosive"].loot == nil then 
		data.raw.unit["5d-small-biter-explosive"].loot = {}
	end

	if data.raw.item["necro-small-biter-corpse"] then
		table.insert(data.raw.unit["5d-small-biter-explosive"].loot, {  item = "necro-small-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-small-biter-physical"] then
	if data.raw.unit["5d-small-biter-physical"].loot == nil then 
		data.raw.unit["5d-small-biter-physical"].loot = {}
	end

	if data.raw.item["necro-small-biter-corpse"] then
		table.insert(data.raw.unit["5d-small-biter-physical"].loot, {  item = "necro-small-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-small-biter-climber"] then
	if data.raw.unit["5d-small-biter-climber"].loot == nil then 
		data.raw.unit["5d-small-biter-climber"].loot = {}
	end

	if data.raw.item["necro-small-biter-corpse"] then
		table.insert(data.raw.unit["5d-small-biter-climber"].loot, {  item = "necro-small-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-small-biter-swimmer"] then
	if data.raw.unit["5d-small-biter-swimmer"].loot == nil then 
		data.raw.unit["5d-small-biter-swimmer"].loot = {}
	end

	if data.raw.item["necro-small-biter-corpse"] then
		table.insert(data.raw.unit["5d-small-biter-swimmer"].loot, {  item = "necro-small-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- ===== small spiters ===
if data.raw.unit["5d-small-spiter-fire"] then
	if data.raw.unit["5d-small-spiter-fire"].loot == nil then 
		data.raw.unit["5d-small-spiter-fire"].loot = {}
	end

	if data.raw.item["necro-small-spitter-corpse"] then
		table.insert(data.raw.unit["5d-small-spiter-fire"].loot, {  item = "necro-small-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-small-spiter-rocket"] then
	if data.raw.unit["5d-small-spiter-rocket"].loot == nil then 
		data.raw.unit["5d-small-spiter-rocket"].loot = {}
	end

	if data.raw.item["necro-small-spitter-corpse"] then
		table.insert(data.raw.unit["5d-small-spiter-rocket"].loot, {  item = "necro-small-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end


-- ===== medium biters ===
if data.raw.unit["5d-medium-biter-laser"] then
	if data.raw.unit["5d-medium-biter-laser"].loot == nil then 
		data.raw.unit["5d-medium-biter-laser"].loot = {}
	end

	if data.raw.item["necro-medium-biter-corpse"] then
		table.insert(data.raw.unit["5d-medium-biter-laser"].loot, {  item = "necro-medium-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-medium-biter-explosive"] then
	if data.raw.unit["5d-medium-biter-explosive"].loot == nil then 
		data.raw.unit["5d-medium-biter-explosive"].loot = {}
	end

	if data.raw.item["necro-medium-biter-corpse"] then
		table.insert(data.raw.unit["5d-medium-biter-explosive"].loot, {  item = "necro-medium-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-medium-biter-physical"] then
	if data.raw.unit["5d-medium-biter-physical"].loot == nil then 
		data.raw.unit["5d-medium-biter-physical"].loot = {}
	end

	if data.raw.item["necro-medium-biter-corpse"] then
		table.insert(data.raw.unit["5d-medium-biter-physical"].loot, {  item = "necro-medium-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-medium-biter-climber"] then
	if data.raw.unit["5d-medium-biter-climber"].loot == nil then 
		data.raw.unit["5d-medium-biter-climber"].loot = {}
	end

	if data.raw.item["necro-medium-biter-corpse"] then
		table.insert(data.raw.unit["5d-medium-biter-climber"].loot, {  item = "necro-medium-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-medium-biter-swimmer"] then
	if data.raw.unit["5d-medium-biter-swimmer"].loot == nil then 
		data.raw.unit["5d-medium-biter-swimmer"].loot = {}
	end

	if data.raw.item["necro-medium-biter-corpse"] then
		table.insert(data.raw.unit["5d-medium-biter-swimmer"].loot, {  item = "necro-medium-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- ===== medium spiters ===
if data.raw.unit["5d-medium-spiter-fire"] then
	if data.raw.unit["5d-medium-spiter-fire"].loot == nil then 
		data.raw.unit["5d-medium-spiter-fire"].loot = {}
	end

	if data.raw.item["necro-medium-spitter-corpse"] then
		table.insert(data.raw.unit["5d-medium-spiter-fire"].loot, {  item = "necro-medium-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-medium-spiter-rocket"] then
	if data.raw.unit["5d-medium-spiter-rocket"].loot == nil then 
		data.raw.unit["5d-medium-spiter-rocket"].loot = {}
	end

	if data.raw.item["necro-medium-spitter-corpse"] then
		table.insert(data.raw.unit["5d-medium-spiter-rocket"].loot, {  item = "necro-medium-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end


-- ===== big biters ===
if data.raw.unit["5d-big-biter-laser"] then
	if data.raw.unit["5d-big-biter-laser"].loot == nil then 
		data.raw.unit["5d-big-biter-laser"].loot = {}
	end

	if data.raw.item["necro-big-biter-corpse"] then
		table.insert(data.raw.unit["5d-big-biter-laser"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-big-biter-explosive"] then
	if data.raw.unit["5d-big-biter-explosive"].loot == nil then 
		data.raw.unit["5d-big-biter-explosive"].loot = {}
	end

	if data.raw.item["necro-big-biter-corpse"] then
		table.insert(data.raw.unit["5d-big-biter-explosive"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-big-biter-physical"] then
	if data.raw.unit["5d-big-biter-physical"].loot == nil then 
		data.raw.unit["5d-big-biter-physical"].loot = {}
	end

	if data.raw.item["necro-big-biter-corpse"] then
		table.insert(data.raw.unit["5d-big-biter-physical"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-big-biter-climber"] then
	if data.raw.unit["5d-big-biter-climber"].loot == nil then 
		data.raw.unit["5d-big-biter-climber"].loot = {}
	end

	if data.raw.item["necro-big-biter-corpse"] then
		table.insert(data.raw.unit["5d-big-biter-climber"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-big-biter-swimmer"] then
	if data.raw.unit["5d-big-biter-swimmer"].loot == nil then 
		data.raw.unit["5d-big-biter-swimmer"].loot = {}
	end

	if data.raw.item["necro-big-biter-corpse"] then
		table.insert(data.raw.unit["5d-big-biter-swimmer"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- ===== big spiters ===
if data.raw.unit["5d-big-spiter-fire"] then
	if data.raw.unit["5d-big-spiter-fire"].loot == nil then 
		data.raw.unit["5d-big-spiter-fire"].loot = {}
	end

	if data.raw.item["necro-big-spitter-corpse"] then
		table.insert(data.raw.unit["5d-big-spiter-fire"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-big-spiter-rocket"] then
	if data.raw.unit["5d-big-spiter-rocket"].loot == nil then 
		data.raw.unit["5d-big-spiter-rocket"].loot = {}
	end

	if data.raw.item["necro-big-spitter-corpse"] then
		table.insert(data.raw.unit["5d-big-spiter-rocket"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end


-- ===== behemoth biters ===
if data.raw.unit["5d-behemoth-biter-laser"] then
	if data.raw.unit["5d-behemoth-biter-laser"].loot == nil then 
		data.raw.unit["5d-behemoth-biter-laser"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-biter-laser"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-behemoth-biter-explosive"] then
	if data.raw.unit["5d-behemoth-biter-explosive"].loot == nil then 
		data.raw.unit["5d-behemoth-biter-explosive"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-biter-explosive"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-behemoth-biter-physical"] then
	if data.raw.unit["5d-behemoth-biter-physical"].loot == nil then 
		data.raw.unit["5d-behemoth-biter-physical"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-biter-physical"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-behemoth-biter-climber"] then
	if data.raw.unit["5d-behemoth-biter-climber"].loot == nil then 
		data.raw.unit["5d-behemoth-biter-climber"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-biter-climber"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-behemoth-biter-swimmer"] then
	if data.raw.unit["5d-behemoth-biter-swimmer"].loot == nil then 
		data.raw.unit["5d-behemoth-biter-swimmer"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-biter-swimmer"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- ===== behemoth spiters ===
if data.raw.unit["5d-behemoth-spiter-fire"] then
	if data.raw.unit["5d-behemoth-spiter-fire"].loot == nil then 
		data.raw.unit["5d-behemoth-spiter-fire"].loot = {}
	end

	if data.raw.item["necro-behemoth-spitter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-spiter-fire"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-behemoth-spiter-rocket"] then
	if data.raw.unit["5d-behemoth-spiter-rocket"].loot == nil then 
		data.raw.unit["5d-behemoth-spiter-rocket"].loot = {}
	end

	if data.raw.item["necro-behemoth-spitter-corpse"] then
		table.insert(data.raw.unit["5d-behemoth-spiter-rocket"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end


-- ===== exp biters ===
if data.raw.unit["5d-exp-biter-laser"] then
	if data.raw.unit["5d-exp-biter-laser"].loot == nil then 
		data.raw.unit["5d-exp-biter-laser"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-exp-biter-laser"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-biter-explosive"] then
	if data.raw.unit["5d-exp-biter-explosive"].loot == nil then 
		data.raw.unit["5d-exp-biter-explosive"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-exp-biter-explosive"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-biter-physical"] then
	if data.raw.unit["5d-exp-biter-physical"].loot == nil then 
		data.raw.unit["5d-exp-biter-physical"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-exp-biter-physical"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-biter-climber"] then
	if data.raw.unit["5d-exp-biter-climber"].loot == nil then 
		data.raw.unit["5d-exp-biter-climber"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-exp-biter-climber"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-biter-swimmer"] then
	if data.raw.unit["5d-exp-biter-swimmer"].loot == nil then 
		data.raw.unit["5d-exp-biter-swimmer"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-exp-biter-swimmer"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-biter"] then
	if data.raw.unit["5d-exp-biter"].loot == nil then 
		data.raw.unit["5d-exp-biter"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["5d-exp-biter"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- ===== exp spiters ===
if data.raw.unit["5d-exp-spiter-fire"] then
	if data.raw.unit["5d-exp-spiter-fire"].loot == nil then 
		data.raw.unit["5d-exp-spiter-fire"].loot = {}
	end

	if data.raw.item["necro-behemoth-spitter-corpse"] then
		table.insert(data.raw.unit["5d-exp-spiter-fire"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-spiter-rocket"] then
	if data.raw.unit["5d-exp-spiter-rocket"].loot == nil then 
		data.raw.unit["5d-exp-spiter-rocket"].loot = {}
	end

	if data.raw.item["necro-behemoth-spitter-corpse"] then
		table.insert(data.raw.unit["5d-exp-spiter-rocket"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["5d-exp-spiter"] then
	if data.raw.unit["5d-exp-spiter"].loot == nil then 
		data.raw.unit["5d-exp-spiter"].loot = {}
	end

	if data.raw.item["necro-behemoth-spitter-corpse"] then
		table.insert(data.raw.unit["5d-exp-spiter"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end


-- ===== worms ===
if data.raw.turret["behemoth-worm-turret"] then
  if data.raw.turret["behemoth-worm-turret"].loot == nil then 
    data.raw.turret["behemoth-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["behemoth-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["experimental-worm-turret"] then
  if data.raw.turret["experimental-worm-turret"].loot == nil then 
    data.raw.turret["experimental-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["experimental-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end
