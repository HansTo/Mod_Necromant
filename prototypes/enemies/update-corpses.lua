-- biters =======================================
if data.raw.unit["small-biter"] then
	if data.raw.unit["small-biter"].loot == nil then 
		data.raw.unit["small-biter"].loot = {}
	end

	if data.raw.item["necro-small-biter-corpse"] then
		table.insert(data.raw.unit["small-biter"].loot, {  item = "necro-small-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["medium-biter"] then
	if data.raw.unit["medium-biter"].loot == nil then 
		data.raw.unit["medium-biter"].loot = {}
	end

	if data.raw.item["necro-medium-biter-corpse"] then
		table.insert(data.raw.unit["medium-biter"].loot, {  item = "necro-medium-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["big-biter"] then
	if data.raw.unit["big-biter"].loot == nil then 
		data.raw.unit["big-biter"].loot = {}
	end

	if data.raw.item["necro-big-biter-corpse"] then
		table.insert(data.raw.unit["big-biter"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["behemoth-biter"] then
	if data.raw.unit["behemoth-biter"].loot == nil then 
		data.raw.unit["behemoth-biter"].loot = {}
	end

	if data.raw.item["necro-behemoth-biter-corpse"] then
		table.insert(data.raw.unit["behemoth-biter"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- spitters =======================================
if data.raw.unit["small-spitter"] then
	if data.raw.unit["small-spitter"].loot == nil then 
		data.raw.unit["small-spitter"].loot = {}
	end

	if data.raw.item["necro-small-spitter-corpse"] then
		table.insert(data.raw.unit["small-spitter"].loot, {  item = "necro-small-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["medium-spitter"] then
	if data.raw.unit["medium-spitter"].loot == nil then 
		data.raw.unit["medium-spitter"].loot = {}
	end

	if data.raw.item["necro-medium-spitter-corpse"] then
		table.insert(data.raw.unit["medium-spitter"].loot, {  item = "necro-medium-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["big-spitter"] then
	if data.raw.unit["big-spitter"].loot == nil then 
		data.raw.unit["big-spitter"].loot = {}
	end

	if data.raw.item["necro-big-spitter-corpse"] then
		table.insert(data.raw.unit["big-spitter"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

if data.raw.unit["behemoth-spitter"] then
	if data.raw.unit["behemoth-spitter"].loot == nil then 
		data.raw.unit["behemoth-spitter"].loot = {}
	end

	if data.raw.item["necro-behemoth-spitter-corpse"] then
		table.insert(data.raw.unit["behemoth-spitter"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
	end
end

-- bobs biters ====================================
if data.raw.unit["bob-giant-fire-biter"]~=nil then
  if data.raw.unit["bob-giant-fire-biter"].loot == nil then 
    data.raw.unit["bob-giant-fire-biter"].loot = {}
  end

  if data.raw.item["necro-big-biter-corpse"] then
	table.insert(data.raw.unit["bob-giant-fire-biter"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-giant-poison-biter"]~=nil then
  if data.raw.unit["bob-giant-poison-biter"].loot == nil then 
    data.raw.unit["bob-giant-poison-biter"].loot = {}
  end

  if data.raw.item["necro-big-biter-corpse"] then
	table.insert(data.raw.unit["bob-giant-poison-biter"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-huge-acid-biter"]~=nil then
  if data.raw.unit["bob-huge-acid-biter"].loot == nil then 
    data.raw.unit["bob-huge-acid-biter"].loot = {}
  end

  if data.raw.item["necro-big-biter-corpse"] then
	table.insert(data.raw.unit["bob-huge-acid-biter"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-huge-explosive-biter"]~=nil then
  if data.raw.unit["bob-huge-explosive-biter"].loot == nil then 
    data.raw.unit["bob-huge-explosive-biter"].loot = {}
  end

  if data.raw.item["necro-big-biter-corpse"] then
	table.insert(data.raw.unit["bob-huge-explosive-biter"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-big-piercing-biter"]~=nil then
  if data.raw.unit["bob-big-piercing-biter"].loot == nil then 
    data.raw.unit["bob-big-piercing-biter"].loot = {}
  end

  if data.raw.item["necro-big-biter-corpse"] then
	table.insert(data.raw.unit["bob-big-piercing-biter"].loot, {  item = "necro-big-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-titan-biter"]~=nil then
  if data.raw.unit["bob-titan-biter"].loot == nil then 
    data.raw.unit["bob-titan-biter"].loot = {}
  end

  if data.raw.item["necro-behemoth-biter-corpse"] then
	table.insert(data.raw.unit["bob-titan-biter"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-behemoth-biter"]~=nil then
  if data.raw.unit["bob-behemoth-biter"].loot == nil then 
    data.raw.unit["bob-behemoth-biter"].loot = {}
  end

  if data.raw.item["necro-behemoth-biter-corpse"] then
	table.insert(data.raw.unit["bob-behemoth-biter"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-leviathan-biter"]~=nil then
  if data.raw.unit["bob-leviathan-biter"].loot == nil then 
    data.raw.unit["bob-leviathan-biter"].loot = {}
  end

  if data.raw.item["necro-behemoth-biter-corpse"] then
	table.insert(data.raw.unit["bob-leviathan-biter"].loot, {  item = "necro-behemoth-biter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

-- bobs spitters===================================
if data.raw.unit["bob-big-electric-spitter"]~=nil then
  if data.raw.unit["bob-big-electric-spitter"].loot == nil then 
    data.raw.unit["bob-big-electric-spitter"].loot = {}
  end

  if data.raw.item["necro-big-spitter-corpse"] then
	table.insert(data.raw.unit["bob-big-electric-spitter"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-huge-explosive-spitter"]~=nil then
  if data.raw.unit["bob-huge-explosive-spitter"].loot == nil then 
    data.raw.unit["bob-huge-explosive-spitter"].loot = {}
  end

  if data.raw.item["necro-big-spitter-corpse"] then
	table.insert(data.raw.unit["bob-huge-explosive-spitter"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-huge-acid-spitter"]~=nil then
  if data.raw.unit["bob-huge-acid-spitter"].loot == nil then 
    data.raw.unit["bob-huge-acid-spitter"].loot = {}
  end

  if data.raw.item["necro-big-spitter-corpse"] then
	table.insert(data.raw.unit["bob-huge-acid-spitter"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-giant-fire-spitter"]~=nil then
  if data.raw.unit["bob-giant-fire-spitter"].loot == nil then 
    data.raw.unit["bob-giant-fire-spitter"].loot = {}
  end

  if data.raw.item["necro-big-spitter-corpse"] then
	table.insert(data.raw.unit["bob-giant-fire-spitter"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-giant-poison-spitter"]~=nil then
  if data.raw.unit["bob-giant-poison-spitter"].loot == nil then 
    data.raw.unit["bob-giant-poison-spitter"].loot = {}
  end

  if data.raw.item["necro-big-spitter-corpse"] then
	table.insert(data.raw.unit["bob-giant-poison-spitter"].loot, {  item = "necro-big-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-titan-spitter"]~=nil then
  if data.raw.unit["bob-titan-spitter"].loot == nil then 
    data.raw.unit["bob-titan-spitter"].loot = {}
  end

  if data.raw.item["necro-behemoth-spitter-corpse"] then
	table.insert(data.raw.unit["bob-titan-spitter"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-behemoth-spitter"]~=nil then
  if data.raw.unit["bob-behemoth-spitter"].loot == nil then 
    data.raw.unit["bob-behemoth-spitter"].loot = {}
  end

  if data.raw.item["necro-behemoth-spitter-corpse"] then
	table.insert(data.raw.unit["bob-behemoth-spitter"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.unit["bob-leviathan-spitter"]~=nil then
  if data.raw.unit["bob-leviathan-spitter"].loot == nil then 
    data.raw.unit["bob-leviathan-spitter"].loot = {}
  end

  if data.raw.item["necro-behemoth-spitter-corpse"] then
	table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {  item = "necro-behemoth-spitter-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

-- worms ==========================================
if data.raw.turret["small-worm-turret"] then
  if data.raw.turret["small-worm-turret"].loot == nil then 
    data.raw.turret["small-worm-turret"].loot = {}
  end
  if data.raw.item["necro-small-worm-corpse"] then
    table.insert(data.raw.turret["small-worm-turret"].loot, { item = "necro-small-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.turret["medium-worm-turret"] then
  if data.raw.turret["medium-worm-turret"].loot == nil then 
    data.raw.turret["medium-worm-turret"].loot = {}
  end
  if data.raw.item["necro-medium-worm-corpse"] then
    table.insert(data.raw.turret["medium-worm-turret"].loot, { item = "necro-medium-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

if data.raw.turret["big-worm-turret"] then
  if data.raw.turret["big-worm-turret"].loot == nil then 
    data.raw.turret["big-worm-turret"].loot = {}
  end
  if data.raw.item["necro-big-worm-corpse"] then
    table.insert(data.raw.turret["big-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

--Trblz
if data.raw.turret["behemoth-worm-turret"] then
  if data.raw.turret["behemoth-worm-turret"].loot == nil then 
    data.raw.turret["behemoth-worm-turret"].loot = {}
  end
  if data.raw.item["necro-behemoth-worm-corpse"] then
    table.insert(data.raw.turret["behemoth-worm-turret"].loot, { item = "necro-behemoth-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
  end
end

-- bobs worms -------------------------------------
if data.raw.turret["bob-big-explosive-worm-turret"] then
  if data.raw.turret["bob-big-explosive-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-explosive-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-big-explosive-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["bob-big-fire-worm-turret"] then
  if data.raw.turret["bob-big-fire-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-fire-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-big-fire-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["bob-big-poison-worm-turret"] then
  if data.raw.turret["bob-big-poison-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-poison-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-big-poison-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["bob-big-piercing-worm-turret"] then
  if data.raw.turret["bob-big-piercing-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-piercing-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-big-piercing-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["bob-big-electric-worm-turret"] then
  if data.raw.turret["bob-big-electric-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-electric-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-big-electric-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["bob-giant-worm-turret"] then
  if data.raw.turret["bob-giant-worm-turret"].loot == nil then 
    data.raw.turret["bob-giant-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-giant-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end

if data.raw.turret["bob-behemoth-worm-turret"] then
  if data.raw.turret["bob-behemoth-worm-turret"].loot == nil then 
    data.raw.turret["bob-behemoth-worm-turret"].loot = {}
  end
  table.insert(data.raw.turret["bob-behemoth-worm-turret"].loot, { item = "necro-big-worm-corpse",  count_min = 1,  count_max = 1,  probability = 1 } )
end



