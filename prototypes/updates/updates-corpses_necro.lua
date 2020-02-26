local showmsg = false  -- Debug log message toggle

local function debuglog(msg)
  if showmsg then log(msg) end
  return showmsg
end

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

-- biters =======================================
enemies_add_loot_unit ("small-biter", "necro-small-biter-corpse", 1, 1, 1)
enemies_add_loot_unit ("medium-biter", "necro-medium-biter-corpse", 1, 1, 1)
enemies_add_loot_unit ("big-biter", "necro-big-biter-corpse", 1, 1, 1)
enemies_add_loot_unit ("behemoth-biter", "necro-behemoth-biter-corpse", 1, 1, 1)

-- spitters =======================================
enemies_add_loot_unit ("small-spitter", "necro-small-spitter-corpse", 1, 1, 1)
enemies_add_loot_unit ("medium-spitter", "necro-medium-spitter-corpse", 1, 1, 1)
enemies_add_loot_unit ("big-spitter", "necro-big-spitter-corpse", 1, 1, 1)
enemies_add_loot_unit ("behemoth-spitter", "necro-behemoth-spitter-corpse", 1, 1, 1)

-- worms ==========================================
enemies_add_loot_turret ("small-worm-turret", "necro-small-worm-corpse", 1, 1, 1)
enemies_add_loot_turret ("medium-worm-turret", "necro-medium-worm-corpse", 1, 1, 1)
enemies_add_loot_turret ("big-worm-turret",  "necro-big-worm-corpse", 1, 1, 1)
enemies_add_loot_turret ("behemoth-worm-turret", "necro-behemoth-worm-corpse", 1, 1, 1)




