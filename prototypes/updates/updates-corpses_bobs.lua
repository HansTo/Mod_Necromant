if settings.startup["necro-setting-debug-on"].value == true then
    showmsg = true
end
local function debuglog(msg)
  if showmsg then log(msg) end
  return showmsg
end

local corp_prob = 1 -- default probability
local corp_prob = settings.startup["necro-setting-probability"].value/100

-- update for biters and spitters
local function enemies_add_loot_unit(old_name, new_name, new_cnt_min , new_cnt_max, new_prob)
	debuglog("1. remove loot from "..old_name)
	if data.raw.unit[old_name] then
		if data.raw.unit[old_name].loot == nil then 
			data.raw.unit[old_name].loot = {}
		end
		if data.raw.item[new_name] then
			table.insert(data.raw.unit[old_name].loot, {  item = new_name,  count_min = new_cnt_min,  count_max = new_cnt_max,  probability = new_prob } )
			debuglog("2. add loot to " .. new_name)
		end
	end
end 

-- update only for turrets
local function enemies_add_loot_turret(old_name, new_name, new_cnt_min , new_cnt_max, new_prob)
	debuglog("1. remove loot from "..old_name)
	if data.raw.turret[old_name] then
		if data.raw.turret[old_name].loot == nil then 
			data.raw.turret[old_name].loot = {}
		end
		if data.raw.item[new_name] then
			table.insert(data.raw.turret[old_name].loot, {  item = new_name,  count_min = new_cnt_min,  count_max = new_cnt_max,  probability = new_prob } )
			debuglog("2. add loot to " .. new_name)
		end
	end
end 

-- update only for spawners
local function enemies_add_loot_spawner(old_name, new_name, new_cnt_min , new_cnt_max, new_prob)
	debuglog("1. remove loot from "..old_name)
	if data.raw.unit-spawner[old_name] then
		if data.raw.unit-spawner[old_name].loot == nil then 
			data.raw.unit-spawner[old_name].loot = {}
		end
		if data.raw.item[new_name] then
			table.insert(data.raw.unit-spawner[old_name].loot, {  item = new_name,  count_min = new_cnt_min,  count_max = new_cnt_max,  probability = new_prob } )
			debuglog("2. add loot to " .. new_name)
		end
	end
end 


-- bobs biters ====================================
enemies_add_loot_unit ("bob-giant-fire-biter", "necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-giant-poison-biter", "necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-huge-acid-biter", "necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-huge-explosive-biter", "necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-big-piercing-biter", "necro-big-biter-corpse", 1, 1, corp_prob)

enemies_add_loot_unit ("bob-titan-biter", "necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-behemoth-biter", "necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-leviathan-biter", "necro-behemoth-biter-corpse", 1, 1, corp_prob)

-- bobs spitters===================================
enemies_add_loot_unit ("bob-big-electric-spitter", "necro-big-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-huge-explosive-spitter", "necro-big-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-huge-acid-spitter", "necro-big-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-giant-fire-spitter", "necro-big-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-giant-poison-spitter", "necro-big-spitter-corpse", 1, 1, corp_prob)

enemies_add_loot_unit ("bob-titan-spitter", "necro-behemoth-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-behemoth-spitter", "necro-behemoth-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("bob-leviathan-spitter", "necro-behemoth-spitter-corpse", 1, 1, corp_prob)

-- bobs worms -------------------------------------
enemies_add_loot_turret ("bob-big-explosive-worm-turret", "necro-big-worm-corpse", 1, 1, corp_prob)
enemies_add_loot_turret ("bob-big-fire-worm-turret", "necro-big-worm-corpse", 1, 1, corp_prob)
enemies_add_loot_turret ("bob-big-poison-worm-turret", "necro-big-worm-corpse", 1, 1, corp_prob)
enemies_add_loot_turret ("bob-big-electric-worm-turret", "necro-big-worm-corpse", 1, 1, corp_prob)
enemies_add_loot_turret ("bob-giant-worm-turret", "necro-big-worm-corpse", 1, 1, corp_prob)
enemies_add_loot_turret ("bob-behemoth-worm-turret", "necro-big-worm-corpse", 1, 1, corp_prob)


-- bobs spawner -------------------------------------
enemies_add_loot_spawner ("bob-biter-spawner", "necro-spawner-corpse", 1, 1, corp_prob)
enemies_add_loot_spawner ("bob-spitter-spawner", "necro-spawner-corpse", 1, 1, corp_prob)
