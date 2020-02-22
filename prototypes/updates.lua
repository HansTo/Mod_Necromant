-- science packs with dna
if settings.startup["necro-setting-dna-military-science"].value == true then
	if data.raw.recipe["military-science-pack"] then
		table.insert(data.raw["recipe"]["military-science-pack"].ingredients,{"necro-alien-dna", 1})
	end
end

if settings.startup["necro-setting-dna-prod-science"].value == true then
	if data.raw.recipe["production-science-pack"] then
		table.insert(data.raw["recipe"]["production-science-pack"].ingredients,{"necro-alien-dna", 1})
	end
end

if settings.startup["necro-setting-dna-high-science"].value == true then
	if data.raw.recipe["utility-science-pack"] then
		table.insert(data.raw["recipe"]["utility-science-pack"].ingredients,{"necro-alien-dna", 1})
	end
end


-- shields
if settings.startup["necro-setting-chitin-shield"].value == true then
	if data.raw.recipe["energy-shield-equipment"] then
		table.insert(data.raw["recipe"]["energy-shield-equipment"].ingredients,{"necro-chitin", 20})
	end

	if data.raw.recipe["energy-shield-mk2-equipment"] then
		table.insert(data.raw["recipe"]["energy-shield-mk2-equipment"].ingredients,{"necro-chitin", 100})
	end
end


-- armors
if settings.startup["necro-setting-chitin-armor"].value == true then
	if data.raw.recipe["heavy-armor"] then
		table.insert(data.raw["recipe"]["heavy-armor"].ingredients,{"necro-chitin", 2})
	end

	if data.raw.recipe["modular-armor"] then
		table.insert(data.raw["recipe"]["modular-armor"].ingredients,{"necro-chitin", 20})
	end

	if data.raw.recipe["power-armor"] then
		table.insert(data.raw["recipe"]["power-armor"].ingredients,{"necro-chitin", 100})
	end

	if data.raw.recipe["power-armor-mk2"] then
		table.insert(data.raw["recipe"]["power-armor-mk2"].ingredients,{"necro-chitin", 500})
	end
end


-- Bobs alien science packs
if settings.startup["necro-setting-dna-bob-alien-science"].value == true then
	if data.raw.recipe["alien-science-pack"] then
		table.insert(data.raw["recipe"]["alien-science-pack"].ingredients,{"necro-alien-dna", 1})
	end

	if data.raw.recipe["alien-science-pack-blue"] then
		table.insert(data.raw["recipe"]["alien-science-pack-blue"].ingredients,{"necro-alien-dna", 1})
	end

	if data.raw.recipe["alien-science-pack-orange"] then
		table.insert(data.raw["recipe"]["alien-science-pack-orange"].ingredients,{"necro-alien-dna", 1})
	end

	if data.raw.recipe["alien-science-pack-purple"] then
		table.insert(data.raw["recipe"]["alien-science-pack-purple"].ingredients,{"necro-alien-dna", 1})
	end

	if data.raw.recipe["alien-science-pack-yellow"] then
		table.insert(data.raw["recipe"]["alien-science-pack-yellow"].ingredients,{"necro-alien-dna", 1})
	end

	if data.raw.recipe["alien-science-pack-green"] then
		table.insert(data.raw["recipe"]["alien-science-pack-green"].ingredients,{"necro-alien-dna", 1})
	end

	if data.raw.recipe["alien-science-pack-red"] then
		table.insert(data.raw["recipe"]["alien-science-pack-red"].ingredients,{"necro-alien-dna", 1})
	end
end

-- Chitin processing depending on Bobs plates
if data.raw.recipe["bob-resin-wood"] then
	table.insert(data.raw["recipe"]["necro-chitin-processing"].ingredients,{"resin", 1})
else
	table.insert(data.raw["recipe"]["necro-chitin-processing"].ingredients,{"wood", 1})
end

