local function debuglog(msg)
  if showmsg then log(msg) end
  return showmsg
end

if settings.startup["necro-setting-debug-on"].value == true then
    showmsg = true
end

local corp_prob = 1 -- default probability
local corp_prob = settings.startup["necro-setting-probability"].value/100

--debuglog ("corp_prob = "..settings.startup["necro-setting-probability"].value.." = "..corp_prob)

local function array_append(a_main, a_append)
    debuglog("array_append start : " .. #a_main .. " add ".. #a_append)
    for _, v in pairs(a_append) do
        table.insert(a_main, v)
    end
    debuglog("array_append end : " .. #a_main )
end 

-- initialize
local pattern_tiers = {}
local pattern_worms = {}
local pattern_biter = {}
local pattern_spttr = {}
local pattern_spawn = {}
local dr = data.raw

-- necromant corpses
local necro_bodies = { "small", "medium", "big", "behemoth", "spawner" }
local necro_bodies = { "small", "medium", "big", "behemoth", "spawner" }
-- vanilla pattern definitions for worms
local pattern_worms_vanilla = {"%-worm$",   "%-worm%-",}
-- vanilla pattern definitions for biters 
local pattern_biter_vanilla = {"%-biter$",  "%-biter%-",}
-- vanilla pattern definitions for spitters
local pattern_spttr_vanilla = {"%-spitter$","%-spitter%-",}
-- vanilla pattern definitions for spawners
local pattern_spawn_vanilla = {"%-spawner$","%-spawner%-",}


-- pattern matrix : vanilla enemies
local pattern_matrix_vanilla = {
  {{ "^small%-", "%-small%-",       },   "small",   corp_prob},      -- [1] small
  {{ "^medium%-", "%-medium%-",     },   "medium",  corp_prob},      -- [2] medium
  {{ "^big%-", "%-big%-",           },   "big",     corp_prob},      -- [3] big
  {{ "^behemoth%-", "%-behemoth%-", },   "behemoth",corp_prob},      -- [4] behemoth
  {{"%-spawner$","%-spawner%-",     },   "spawner" ,corp_prob},      -- [5] spawner
}

-- pattern matrix : additional for bobs enemies
local pattern_matrix_bobs = {
  {{ "%-giant%-", "%-huge%-", },         "big",     corp_prob},      -- [3] big
  {{ "%-megalodon%-","%-titan%-", },     "behemoth",corp_prob},      -- [4] behemoth
  {{ "^leviathan%-", "%-leviathan%-", }, "behemoth",corp_prob},      -- [5] category V
  {{ "^mother%-", },                     "behemoth",corp_prob},      -- [6] category VI
}

-- pattern matrix : additional for schallfalke enemies
local pattern_matrix_schall = {
  {{ "^Schall%-category%-5%-", },        "behemoth",     corp_prob},      -- [5] category V
  {{ "^Schall%-category%-6%-", },        "behemoth",     corp_prob},      -- [6] category VI
  {{ "^Schall%-category%-7%-", },        "behemoth",     corp_prob},      -- [7] category VII
  {{ "^Schall%-category%-8%-", },        "behemoth",     corp_prob},      -- [8] category VIII
  {{ "^Schall%-category%-9%-", },        "behemoth",     corp_prob},      -- [9] category IX
  {{ "^Schall%-category%-10%-", },       "behemoth",     corp_prob},      -- [10] category X
}

-- pattern matrix : additional for Natural Enemies Evolved
local pattern_matrix_neevol = {
  {{ "%-base-unit%-", },                 "small",   0.6},      -- NE base-unit
}

array_append ( pattern_tiers, pattern_matrix_vanilla )
array_append ( pattern_tiers, pattern_matrix_bobs    )        -- confirmed works
array_append ( pattern_tiers, pattern_matrix_schall  )
array_append ( pattern_tiers, pattern_matrix_neevol  )


array_append ( pattern_worms, pattern_worms_vanilla )         -- not needed - only in data.raw["turret"]
array_append ( pattern_biter, pattern_biter_vanilla )         -- needed     - mixed in data.raw["unit"]
array_append ( pattern_spttr, pattern_spttr_vanilla )         -- needed     - mixed in data.raw["unit"]
array_append ( pattern_spawn, pattern_spawn_vanilla )         -- not needed - only in data.raw["unit-spawner"]


local num_pattern=#pattern_tiers

--debuglog ("Found     " ..#dr["turret"].." Turrets definitions")
--debuglog ("Found     " ..#dr["unit"].." Units definitions")
--debuglog ("Found     " ..#dr["unit-spawner"].." Spawner definitions")
debuglog ("Defined   " ..#necro_bodies.." necromant corpse types")
debuglog ("Collected " ..num_pattern.." mod pattern definitions")


local function determine_tier(name)
--  for tier = count_pattern_tiers,1,-1 do
  for tier = 1,#pattern_tiers,1 do
--    for _,pattern in pairs(pattern_tiers[tier]) do
    for _,pattern in pairs(pattern_tiers[tier][1]) do
      if name:match(pattern) then return tier end
    end
  end
  return 0
end

local function find_pattern_row(fp_name, fp_pattern)
  local i_row = 0
  for i_row = 1,num_pattern,1 do
    for _,fp_pattern in pairs(fp_pattern[i_row][1]) do
      if fp_name:match(fp_pattern) then 
        return i_row 
      end
    end
  end
  return 0
end

local function find_pattern (dr_array, un_type, p_units, p_tiers)
  local f_name = ""
  for _,v in pairs(dr_array) do
    local pattern_row=false
    local pattern_match = false
  
    -- TODO skip this step for worms/turrets and spawners.
    for _,pattern in pairs(p_units) do
      if v.name:match(pattern) then pattern_match = true end
    end
    
    if pattern_match then
      pattern_row = find_pattern_row(v.name, p_tiers)
      if pattern_row > 0 then
        if un_type == "spawner" then
            f_name = "necro_" ..p_tiers[pattern_row][2].."_corpse"
        
--            debuglog (" + ".. v.name .. " = necro_" ..p_tiers[pattern_row][2].."_corpse / "..p_tiers[pattern_row][3])
        else
            f_name = "necro_" ..p_tiers[pattern_row][2].."_"..un_type.."_corpse"
--            debuglog (" + ".. v.name .. " = necro_" ..p_tiers[pattern_row][2].."_"..un_type.."_corpse / "..p_tiers[pattern_row][3])
        end
        debuglog (" + ".. v.name .. " = "..f_name.." / "..p_tiers[pattern_row][3])
--        table.insert(dr_array.loot, {  item = new_name,  count_min = new_cnt_min,  count_max = new_cnt_max,  probability = new_prob } )

      end
--  SchallAlienLoot_add_worm(v.name, determine_tier(v.name), v)
    end
  end
end

debuglog ("+--------------checking for worms---------------------------------")
find_pattern (dr["turret"],       "worm",    pattern_worms, pattern_tiers)
debuglog ("+--------------checking for biters--------------------------------")
find_pattern (dr["unit"],         "biter",   pattern_biter, pattern_tiers)
debuglog ("+--------------checking for spitters------------------------------")
find_pattern (dr["unit"],         "spitter", pattern_spttr, pattern_tiers)
debuglog ("+--------------checking for spawners------------------------------")
find_pattern (dr["unit-spawner"], "spawner", pattern_spawn, pattern_tiers)
