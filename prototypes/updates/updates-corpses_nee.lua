--
-- original code by regedit200
--
-- posted on https://forums.factorio.com/viewtopic.php?t=37373&start=20
--

local corp_prob = 1 -- default probability
local corp_prob = settings.startup["necro-setting-probability"].value/100


local biter={}
local spitter={}
local worm={}
--list corpse
biter[1] = 	"necro-small-biter-corpse" 
biter[2] = 	"necro-medium-biter-corpse" 
biter[3] = 	"necro-big-biter-corpse" 
biter[4] = 	"necro-behemoth-biter-corpse"
spitter[1] ="necro-small-spitter-corpse" 
spitter[2] ="necro-medium-spitter-corpse" 
spitter[3] ="necro-big-spitter-corpse" 
spitter[4] ="necro-behemoth-spitter-corpse" 
worm[1] = 	"necro-small-worm-corpse" 
worm[2] = 	"necro-medium-worm-corpse" 
worm[3] = 	"necro-big-worm-corpse" 
-- TRBLZ no worm[4]?
worm[4] = 	"necro-behemoth-worm-corpse" 

local unt ={}
unt["b"] =biter
unt["s"] =spitter	
unt["w"] =worm

-- list units
local inlist ={}
--vanilla
inlist["small-biter"]= {lvl=1,tp="b"}
inlist["small-spitter"]= {lvl=1,tp="s"}
inlist["medium-biter"]= {lvl=2,tp="b"}
inlist["medium-spitter"]= {lvl=2,tp="s"}
inlist["big-biter"]= {lvl=3,tp="b"}
inlist["big-spitter"]= {lvl=3,tp="s"}
inlist["behemoth-biter"]= {lvl=4,tp="b"}
inlist["behemoth-spitter"]= {lvl=4,tp="s"}
-- bob units
inlist["bob-behemoth-biter"]= {lvl=4,tp="b"}
inlist["bob-behemoth-spitter"]= {lvl=4,tp="s"}
inlist["bob-big-electric-spitter"]= {lvl=3,tp="s"}
inlist["bob-big-piercing-biter"]= {lvl=3,tp="b"}
inlist["bob-giant-fire-biter"]= {lvl=4,tp="b"}
inlist["bob-giant-fire-spitter"]= {lvl=4,tp="s"}
inlist["bob-giant-poison-biter"]= {lvl=4,tp="b"}
inlist["bob-giant-poison-spitter"]= {lvl=4,tp="s"}
inlist["bob-huge-acid-biter"]= {lvl=4,tp="b"}
inlist["bob-huge-acid-spitter"]= {lvl=4,tp="s"}
inlist["bob-huge-explosive-biter"]= {lvl=4,tp="b"}
inlist["bob-huge-explosive-spitter"]= {lvl=4,tp="s"}
inlist["bob-leviathan-biter"]= {lvl=4,tp="b"}
inlist["bob-leviathan-spitter"]= {lvl=4,tp="s"}
inlist["bob-titan-biter"]= {lvl=4,tp="b"}
inlist["bob-titan-spitter"]= {lvl=4,tp="s"}
-- NE units	
inlist["ne-biter-megalodon"]= {lvl=4,tp="b"}
inlist["ne-spitter-megalodon"]= {lvl=4,tp="s"}

-- worms
--vanilla
inlist["small-worm-turret"]= {lvl=1,tp="w"}
inlist["medium-worm-turret"]= {lvl=2,tp="w"}
inlist["big-worm-turret"]= {lvl=3,tp="w"}
inlist["behemoth-worm-turret"]= {lvl=4,tp="w"}

--bob
inlist["bob-big-electric-worm-turret"]= {lvl=3,tp="w"}
inlist["bob-big-explosive-worm-turret"]= {lvl=3,tp="w"}
inlist["bob-big-fire-worm-turret"]= {lvl=3,tp="w"}
inlist["bob-big-piercing-worm-turret"]= {lvl=3,tp="w"}
inlist["bob-big-poison-worm-turret"]= {lvl=3,tp="w"}
inlist["bob-giant-worm-turret"]= {lvl=4,tp="w"}
inlist["bob-behemoth-worm-turret"]= {lvl=4,tp="w"}







for i,unit in pairs (data.raw.unit) do
	if inlist [unit.name] then 
		tp=inlist [unit.name].tp
		lvl=inlist [unit.name].lvl
		-- biters =======================================
		if tp =="w" then 
			-- turret / worm
			if data.raw.turret[unit.name] then
				if data.raw.turret[unit.name].loot == nil then 
					data.raw.turret[unit.name].loot = {}
				end
				if data.raw.item[unt[tp][lvl]] then
					table.insert(data.raw.turret[unit.name].loot, { item = unt[tp][lvl],  count_min = 1,  count_max = 1,  probability = corp_prob } )
				end
			end
		else
			-- spitter, biter
			if data.raw.unit[unit.name] then
				if data.raw.unit[unit.name].loot == nil then 
					data.raw.unit[unit.name].loot = {}
				end
				if data.raw.item[unt[tp][lvl]] then
					table.insert(data.raw.unit[unit.name].loot, {  item = unt[tp][lvl],  count_min = 1,  count_max = 1,  probability = corp_prob } )
				end
			end
		end
	else
		-- NE enemies leveled units 
		if string.find( unit.name,"^ne-") then 
			local t="b"
			if string.find(unit.name,"spitter") then t="s" end
				local p=string.find( unit.name,"%d")
				if p and p>1 then 
					p=string.sub(unit.name,p)+0
				else
					p=0
				end
			p= math.floor(3*p/21)+1
			log ("for "..unit.name.." set loot : ".. unt[t][p])
			if data.raw.unit[unit.name]~=nil then
				if data.raw.unit[unit.name].loot == nil then 
					data.raw.unit[unit.name].loot = {}
				end
				if data.raw.item[unt[t][p]] then
					table.insert(data.raw.unit[unit.name].loot, {  item = unt[t][p],  count_min = 1,  count_max = 1,  probability = corp_prob } )
					--log ("done")
				end
			end
		end
	end
end