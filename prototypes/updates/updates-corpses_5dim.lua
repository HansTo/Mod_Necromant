-- 5dim biters & spiters =======================================
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

-- ===== small biters ===
enemies_add_loot_unit ("5d-small-biter-laser","necro-small-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-small-biter-explosive","necro-small-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-small-biter-physical","necro-small-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-small-biter-climber","necro-small-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-small-biter-swimmer","necro-small-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-small-biter-laser","necro-small-biter-corpse", 1, 1, corp_prob)

-- ===== small spiters ===
enemies_add_loot_unit ("5d-small-spiter-fire","necro-small-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-small-spiter-rocket","necro-small-spitter-corpse", 1, 1, corp_prob)

-- ===== medium biters ===
enemies_add_loot_unit ("5d-medium-biter-laser","necro-medium-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-medium-biter-explosive","necro-medium-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-medium-biter-physical","necro-medium-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-medium-biter-climber","necro-medium-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-medium-biter-swimmer","necro-medium-biter-corpse", 1, 1, corp_prob)

-- ===== medium spiters ===
enemies_add_loot_unit ("5d-medium-spitter-fire","necro-medium-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-medium-spitter-rocket","necro-medium-spitter-corpse", 1, 1, corp_prob)


-- ===== big biters ===
enemies_add_loot_unit ("5d-big-biter-laser","necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-big-biter-explosive","necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-big-biter-physical","necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-big-biter-climber","necro-big-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-big-biter-swimmer","necro-big-biter-corpse", 1, 1, corp_prob)


-- ===== big spiters ===
enemies_add_loot_unit ("5d-big-spitter-fire","necro-big-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-big-spitter-rocket","necro-big-spitter-corpse", 1, 1, corp_prob)

-- ===== behemoth biters ===
enemies_add_loot_unit ("5d-behemoth-biter-laser","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-behemoth-biter-explosive","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-behemoth-biter-physical","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-behemoth-biter-climber","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-behemoth-biter-swimmer","necro-behemoth-biter-corpse", 1, 1, corp_prob)



-- ===== behemoth spiters ===
enemies_add_loot_unit ("5d-behemoth-spitter-fire","necro-behemoth-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-behemoth-spitter-rocket","necro-behemoth-spitter-corpse", 1, 1, corp_prob)

-- ===== exp biters ===
enemies_add_loot_unit ("5d-exp-biter-laser","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-exp-biter-explosive","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-exp-biter-physical","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-exp-biter-climber","necro-behemoth-biter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-exp-biter-swimmer","necro-behemoth-biter-corpse", 1, 1, corp_prob)

-- ===== exp spiters ===
enemies_add_loot_unit ("5d-exp-spitter-fire","necro-behemoth-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-exp-spitter-rocket","necro-behemoth-spitter-corpse", 1, 1, corp_prob)
enemies_add_loot_unit ("5d-exp-spitter","necro-behemoth-spitter-corpse", 1, 1, corp_prob)


-- ===== worms ===
enemies_add_loot_turret ("behemoth-worm-turret","necro-behemoth-worm-corpse", 1, 1, corp_prob)
enemies_add_loot_turret ("experimental-worm-turret","necro-behemoth-worm-corpse", 1, 1, corp_prob)

