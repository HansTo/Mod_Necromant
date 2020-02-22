  -- items smelting
data:extend(
{
	-- Bone to Charcoal
  {
    type = "recipe",
    name = "necro-bone-charcoal",
	energy_required = 5,
	category = "smelting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-bones", 1}
    },
	result = "necro-bones-charcoal",
	result_count = 2,
	icon = "__necromant__/graphics/icons/bone-charcoal.png",
	icon_size = 32,
	order = "a"
  },
	-- Enriched Bones to charcoal
  {
    type = "recipe",
    name = "necro-enriched-bones-charcoal",
	energy_required = 5,
	category = "smelting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-enriched-bones", 1}
    },
	result = "necro-bones-charcoal",
	result_count = 4,
	icon = "__necromant__/graphics/icons/bone-charcoal.png",
	icon_size = 32,
	order = "b"
  },
 	-- Biter steak
  {
    type = "recipe",
    name = "necro-biter-steak",
	energy_required = 10,
	category = "smelting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-biter-flesh", 5}
    },
	result = "necro-biter-steak",
	result_count = 1,
	icon = "__necromant__/graphics/icons/biter-steak.png",
	icon_size = 32,
	order = "c"
  },
})  
  
  -- items assembly
data:extend(
{
-- group:necro-products
	-- Alien DNA From Brain
  {
    type = "recipe",
    name = "necro-alien-dna-from-brain",
	energy_required = 15,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-biter-brain", 1}
    },
	result = "necro-alien-dna",
	result_count = 1,
	icon = "__necromant__/graphics/icons/dna.png",
	icon_size = 32,
	order = "a"
  },
	-- Alien DNA from Flesh
  {
    type = "recipe",
    name = "necro-alien-dna-from-flesh",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-biter-flesh", 1}
    },
	result = "necro-alien-dna",
	result_count = 1,
	icon = "__necromant__/graphics/icons/dna.png",
	icon_size = 32,
	order = "b"
  },
	-- Chitin fragment to Chitin
  {
    type = "recipe",
    name = "necro-chitin-processing",
	energy_required = 10,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-chitin-fragment", 100}
    },
	result = "necro-chitin",
	result_count = 1,
	icon = "__necromant__/graphics/icons/chitin.png",
	icon_size = 32,
	order = "d"
  },
	-- Enriched Bones
  {
    type = "recipe",
    name = "necro-enriched-bones",
	energy_required = 5,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
	  {"necro-bones", 1},
      {"necro-biter-flesh", 1}
    },
	result = "necro-enriched-bones",
	result_count = 1,
	icon = "__necromant__/graphics/icons/enriched-bones.png",
	icon_size = 32,
	order = "e-b"
  },
	-- Enriched Bones from fish
  {
    type = "recipe",
    name = "necro-enriched-bones-from-fish",
	energy_required = 5,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
	  {"raw-fish", 10},
    },
	result = "necro-enriched-bones",
	result_count = 1,
	icon = "__necromant__/graphics/icons/enriched-bones.png",
	icon_size = 32,
	order = "e-c"
  },
	-- Chitin to bones
  {
    type = "recipe",
    name = "necro-chitin-to-bones",
	energy_required = 10,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-chitin", 1}
    },
	result = "necro-bones",
	result_count = 3,
	icon = "__necromant__/graphics/icons/bones.png",
	icon_size = 32,
	order = "e"
  },
	-- Chitin to Worm Chitin
  {
    type = "recipe",
    name = "necro-process-chitin-to-worm-chitin",
	energy_required = 30,
	category = "advanced-crafting",
	subgroup = "necro-products",
    enabled = false,
    ingredients =
    {
      {"necro-chitin", 10},
	  {"necro-enriched-bones", 5},
	  {"iron-plate", 10},
	  {"wood", 10}
    },
	results=
    {
	  {type="item", name="necro-worm-chitin", amount=1}
    },
	icon = "__necromant__/graphics/icons/worms/worm_chitin.png",
	icon_size = 32,
	order = "d"
  },
-- group:necro-magic
-- Worm Stone Wall 
  {
    type = "recipe",
    name = "necro-worm-stone-wall-recipe",
	subgroup = "necro-magic",
	energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"stone-wall", 1},
	  {"necro-worm-chitin", 1}
    },
	results=
    {
      {type="item", name="necro-item-worm-stone-wall", amount=1},
    },
	icon = "__necromant__/graphics/entity/walls/stone-worm-wall.png",
	icon_size = 32,
	order = "d"
  },
-- Worm Stone Gate
  {
    type = "recipe",
    name = "necro-worm-gate-recipe",
	subgroup = "necro-magic",
	energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"necro-item-worm-stone-wall", 1},
	  {"steel-plate", 2},
	  {"electronic-circuit", 1}
    },
	results=
    {
      {type="item", name="necro-item-worm-gate", amount=1},
    },
	icon = "__necromant__/graphics/icons/stone-worm-gate.png",
	icon_size = 32,
	order = "e"
  }
})

  -- fluids and results of it ================================
data:extend(
{
	-- Alien chemicals from brain
  {
    type = "recipe",
    name = "necro-alien-chemicals-from-brain",
	energy_required = 5,
	category = "chemistry",
	subgroup = "necro-fluids",
    enabled = false,
    ingredients =
    {
      {"necro-biter-brain", 2},
	  {type="fluid", name="water", amount=50}
    },
	results =
    {
      {type="fluid", name="necro-alien-chemicals", amount=50}
    },
	icon = "__necromant__/graphics/icons/alien-chemicals.png",
	icon_size = 32,
	order = "a"
  },
	-- Alien chemicals from flesh
  {
    type = "recipe",
    name = "necro-alien-chemicals-from-flesh",
	energy_required = 10,
	category = "chemistry",
	subgroup = "necro-fluids",
    enabled = false,
    ingredients =
    {
      {"necro-biter-flesh", 2},
	  {type="fluid", name="water", amount=100}
    },
	results =
    {
      {type="fluid", name="necro-alien-chemicals", amount=50}
    },
	icon = "__necromant__/graphics/icons/alien-chemicals.png",
	icon_size = 32,
	order = "b"
  },
	-- Alien chemicals into poison and protein
  {
    type = "recipe",
    name = "necro-alien-chemicals-results",
	energy_required = 2,
	category = "chemistry",
	subgroup = "necro-fluids",
    enabled = false,
    ingredients =
    {
      {type="fluid", name="necro-alien-chemicals", amount=10},
	  {type="fluid", name="water", amount=10}
    },
	results =
    {
      {type="fluid", name="necro-alien-poison", amount=20},
	  {type="fluid", name="necro-alien-protein", amount=10},
    },
	icon = "__necromant__/graphics/icons/alien-chemicals-results.png",
	icon_size = 32,
	order = "c"
  },
	-- Alien protein and acid into alien poison
  {
    type = "recipe",
    name = "necro-alien-poison-from-protein",
	energy_required = 4,
	category = "chemistry",
	subgroup = "necro-fluids",
    enabled = false,
    ingredients =
    {
      {type="fluid", name="necro-alien-protein", amount=50},
	  {type="fluid", name="sulfuric-acid", amount=10}
    },
	results =
    {
      {type="fluid", name="necro-alien-poison", amount=50}
    },
	icon = "__necromant__/graphics/icons/alien-poison.png",
	icon_size = 32,
	order = "d"
  },
	-- Alien heal potion
  {
    type = "recipe",
    name = "necro-recipe-heal-potion",
	energy_required = 20,
	category = "chemistry",
	subgroup = "necro-fluids",
    enabled = false,
    ingredients =
    {
      {type="fluid", name="necro-alien-protein", amount=100},
	  {type="fluid", name="water", amount=1000},
	  {type="item", name="necro-biter-steak", amount=10},
    },
	results =
    {
      {type="item", name="necro-heal-potion", amount=1}
    },
	icon = "__necromant__/graphics/icons/heal-potion.png",
	icon_size = 32,
	order = "e"
  },
	-- Alien poison ammo
  {
    type = "recipe",
    name = "necro-recipe-poison-ammo",
	category = "crafting-with-fluid",
	subgroup = "necro-magic",
	energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"piercing-rounds-magazine", 1},
	  {"iron-plate", 1},
	  {type="fluid", name="necro-alien-poison", amount=10}
    },
	result = "necro-poison-ammo",
	result_count = 1,
	icon = "__necromant__/graphics/icons/poison-ammo.png",
	icon_size = 32,
	order = "f"
  },
	-- Alien dried chemicals
  {
    type = "recipe",
    name = "necro-dried-chemicals-recipe",
	category = "crafting-with-fluid",
	subgroup = "necro-fireball",
	energy_required = 8,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="necro-alien-chemicals", amount=5}
    },
	result = "necro-dried-chemicals",
	icon = "__necromant__/graphics/icons/dried-alien-chemicals.png",
	icon_size = 32,
	order = "d"
  },

})

  -- fireball and staff ================================
if settings.startup["necro-setting-fireball-launcher-and-towers"].value == true then
	data:extend(
{
  {
    type = "recipe",
    name = "necro-fireball-launcher-recipe",
	subgroup = "necro-fireball",
	energy_required = 10,
    enabled = false,
    ingredients =
    {
	  {"necro-bones", 5},
	  {"necro-bones-charcoal", 50},
	  {"steel-plate", 50},
	  {"electronic-circuit", 10},
	  {"wood", 10}
    },
	result = "necro-fireball-launcher",
	icon = "__necromant__/graphics/icons/necro-fireball-launcher.png",
	icon_size = 128,
	order = "a"
  },
  {
    type = "recipe",
    name = "necro-fireball-powder-recipe",
	subgroup = "necro-fireball",
	energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"sulfur", 1},
	  {"necro-burning_substance", 1},
	  {"necro-dried-chemicals", 1}
    },
	results=
    {
      {type="item", name="necro-fireball-powder", amount=10},
    },
	icon = "__necromant__/graphics/icons/fireball-powder.png",
	icon_size = 32,
	order = "b"
  },
  {
    type = "recipe",
    name = "necro-burning-substance-recipe-charcoal",
	subgroup = "necro-fireball",
	energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"necro-bones-charcoal", 2},
	  {"wood", 1},
    },
	result = "necro-burning_substance",
	icon = "__necromant__/graphics/icons/burning-substance.png",
	icon_size = 32,
	order = "c"
  },
  {
    type = "recipe",
    name = "necro-burning-substance-recipe-coal",
	subgroup = "necro-fireball",
	energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"coal", 1},
	  {"wood", 1},
    },
	result = "necro-burning_substance",
	icon = "__necromant__/graphics/icons/burning-substance.png",
	icon_size = 32,
	order = "d"
  },
  {
    type = "recipe",
    name = "necro-fireball-tower-recipe",
	subgroup = "necro-magic",
	energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"gun-turret", 1},
	  {"necro-item-worm-stone-wall", 2},
	  {"electronic-circuit", 5}
    },
	result = "necro-fireball-turret",
	icon = "__necromant__/graphics/icons/fireball-tower.png",
	icon_size = 32,
	order = "e"
  },
  {
    type = "recipe",
    name = "necro-fireball-artillery-recipe",
	subgroup = "necro-magic",
	energy_required = 40,
    enabled = false,
    ingredients =
    {
      {"artillery-turret", 1},
	  {"necro-item-worm-stone-wall", 1},
	  {"advanced-circuit", 1}
    },
	result = "necro-fireball-artillery",
	icon = "__necromant__/graphics/icons/fireball-artillery.png",
	icon_size = 32,
	order = "f"
  }
})
end

  -- corpse processing =======================
data:extend(
{
  -- biters ==========
  {
    type = "recipe",
    name = "necro-process-small-biter-corpse",
	energy_required = 10,
	category = "advanced-crafting",
	subgroup = "necro-biter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-small-biter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=1},
	  {type="item", name="necro-biter-flesh", amount=1},
	  {type="item", name="necro-chitin-fragment", amount=1}
    },
	icon = "__necromant__/graphics/icons/biters/small-biter-processing.png",
	icon_size = 32,
	order = "a"
  },
  {
    type = "recipe",
    name = "necro-process-medium-biter-corpse",
	energy_required = 12,
	category = "advanced-crafting",
	subgroup = "necro-biter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-medium-biter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=2},
	  {type="item", name="necro-biter-flesh", amount=2},
	  {type="item", name="necro-chitin-fragment", amount=7}
    },
	icon = "__necromant__/graphics/icons/biters/medium-biter-processing.png",
	icon_size = 32,
	order = "b"
  },
  {
    type = "recipe",
    name = "necro-process-big-biter-corpse",
	energy_required = 16,
	category = "advanced-crafting",
	subgroup = "necro-biter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-big-biter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=3},
	  {type="item", name="necro-biter-flesh", amount=4},
	  {type="item", name="necro-chitin", amount=1}
    },
	icon = "__necromant__/graphics/icons/biters/big-biter-processing.png",
	icon_size = 32,
	order = "c"
  },
  {
    type = "recipe",
    name = "necro-process-behemoth-biter-corpse",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-biter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-behemoth-biter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=5},
	  {type="item", name="necro-biter-flesh", amount=6},
	  {type="item", name="necro-chitin", amount=2}
    },
	icon = "__necromant__/graphics/icons/biters/behemoth-biter-processing.png",
	icon_size = 32,
	order = "d"
  },
  
  -- spitters ========
  {
    type = "recipe",
    name = "necro-process-small-spitter-corpse",
	energy_required = 11,
	category = "advanced-crafting",
	subgroup = "necro-spitter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-small-spitter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=1},
	  {type="item", name="necro-biter-flesh", amount=1},
	  {type="item", name="necro-chitin-fragment", amount=1}
    },
	icon = "__necromant__/graphics/icons/spitters/small-spitter-processing.png",
	icon_size = 32,
	order = "e"
  },
  {
    type = "recipe",
    name = "necro-process-medium-spitter-corpse",
	energy_required = 13,
	category = "advanced-crafting",
	subgroup = "necro-spitter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-medium-spitter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=2},
	  {type="item", name="necro-biter-flesh", amount=2},
	  {type="item", name="necro-chitin-fragment", amount=5}
    },
	icon = "__necromant__/graphics/icons/spitters/medium-spitter-processing.png",
	icon_size = 32,
	order = "f"
  },
  {
    type = "recipe",
    name = "necro-process-big-spitter-corpse",
	energy_required = 15,
	category = "advanced-crafting",
	subgroup = "necro-spitter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-big-spitter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=3},
	  {type="item", name="necro-biter-flesh", amount=4},
	  {type="item", name="necro-chitin-fragment", amount=20}
    },
	icon = "__necromant__/graphics/icons/spitters/big-spitter-processing.png",
	icon_size = 32,
	order = "g"
  },
  {
    type = "recipe",
    name = "necro-process-behemoth-spitter-corpse",
	energy_required = 18,
	category = "advanced-crafting",
	subgroup = "necro-spitter-processing",
    enabled = false,
    ingredients =
    {
      {"necro-behemoth-spitter-corpse", 1}
    },
	results=
    {
      {type="item", name="necro-biter-brain", amount=1},
	  {type="item", name="necro-bones", amount=5},
	  {type="item", name="necro-biter-flesh", amount=5},
	  {type="item", name="necro-chitin", amount=1}
    },
	icon = "__necromant__/graphics/icons/spitters/behemoth-spitter-processing.png",
	icon_size = 32,
	order = "h"
  },
  -- worms =============================================
  {
    type = "recipe",
    name = "necro-process-small-worm-corpse",
	energy_required = 10,
	category = "advanced-crafting",
	subgroup = "necro-worm-processing",
    enabled = false,
    ingredients =
    {
      {"necro-small-worm-corpse", 1}
    },
	results=
    {
	  {type="item", name="necro-bones", amount=2},
	  {type="item", name="necro-biter-flesh", amount=1},
	  {type="item", name="necro-worm-chitin", amount=20}
    },
	icon = "__necromant__/graphics/icons/worms/worm_corpse_small.png",
	icon_size = 32,
	order = "a"
  },
  {
    type = "recipe",
    name = "necro-process-medium-worm-corpse",
	energy_required = 15,
	category = "advanced-crafting",
	subgroup = "necro-worm-processing",
    enabled = false,
    ingredients =
    {
      {"necro-medium-worm-corpse", 1}
    },
	results=
    {
	  {type="item", name="necro-bones", amount=4},
	  {type="item", name="necro-biter-flesh", amount=2},
	  {type="item", name="necro-worm-chitin", amount=40}
    },
	icon = "__necromant__/graphics/icons/worms/worm_corpse_medium.png",
	icon_size = 32,
	order = "b"
  },
  {
    type = "recipe",
    name = "necro-process-big-worm-corpse",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-worm-processing",
    enabled = false,
    ingredients =
    {
      {"necro-big-worm-corpse", 1}
    },
	results=
    {
	  {type="item", name="necro-bones", amount=9},
	  {type="item", name="necro-biter-flesh", amount=5},
	  {type="item", name="necro-worm-chitin", amount=70}
    },
	icon = "__necromant__/graphics/icons/worms/worm_corpse_big.png",
	icon_size = 32,
	order = "c"
  },
  {
  --Trblz necro-behemoth-worm-corpse
    type = "recipe",
    name = "necro-process-behemoth-worm-corpse",
	energy_required = 30,
	category = "advanced-crafting",
	subgroup = "necro-worm-processing",
    enabled = false,
    ingredients =
    {
      {"necro-behemoth-worm-corpse", 1}
    },
	results=
    {
	  {type="item", name="necro-bones", amount=12},
	  {type="item", name="necro-biter-flesh", amount=8},
	  {type="item", name="necro-worm-chitin", amount=82}
    },
	icon = "__necromant__/graphics/icons/worms/worm_corpse_behemoth.png",
	icon_size = 32,
	order = "d"
  },


})
  
  -- Experimental functions ================================
if settings.startup["necro-setting-experimental"].value == true then

data:extend(
{
	-- Alien DNA from Fish
  {
    type = "recipe",
    name = "necro-alien-dna-from-fish",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"raw-fish", 2}
    },
	result = "necro-alien-dna",
	result_count = 1,
	probability = 0.4,
	icon = "__necromant__/graphics/icons/dna_fish.png",
	icon_size = 64,
	order = "a"
  },
	-- Alien DNA from Wood
  {
    type = "recipe",
    name = "necro-alien-dna-from-wood",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"wood", 2}
    },
	result = "necro-alien-dna",
	result_count = 1,
	probability = 0.4,
	icon = "__necromant__/graphics/icons/dna_wood.png",
	icon_size = 64,
	order = "b"
  },
	-- Alien DNA from Flesh
  {
    type = "recipe",
    name = "necro-alien-dna-from-flesh",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"necro-biter-flesh", 1}
    },
	result = "necro-alien-dna",
	result_count = 1,
	icon = "__necromant__/graphics/icons/dna_flesh.png",
	icon_size = 64,
	order = "c"
  },
  	-- Alien DNA from Bones
  {
    type = "recipe",
    name = "necro-alien-dna-from-bones",
	energy_required = 20,
	category = "advanced-crafting",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"necro-bones", 5}
    },
	result = "necro-alien-dna",
	result_count = 2,
	probability = 0.6,
	icon = "__necromant__/graphics/icons/dna_bones.png",
	icon_size = 64,
	order = "d"
  },
	-- Alien DNA From Brain
  {
    type = "recipe",
    name = "necro-alien-dna-from-brain",
	energy_required = 10,
	category = "chemistry",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"necro-biter-brain", 10},
	  {type="fluid", name="necro-alien-protein", amount=50},
	  {type="fluid", name="sulfuric-acid", amount=50}
    },
	results =
    {
      {type="item", name= "necro-alien-dna", amount=2},
	  {type="item", name= "stone", amount=3}
	},
	icon = "__necromant__/graphics/icons/dna_brain.png",
	icon_size = 64,
	order = "e"
  },
  	-- Alien DNA from Biter Steak
  {
    type = "recipe",
    name = "necro-alien-dna-from-steak",
	energy_required = 10,
	category = "chemistry",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"necro-biter-steak",5},
	  {type="fluid", name="necro-alien-protein", amount=50},
	  {type="fluid", name="sulfuric-acid", amount=50}
    },
	results =
    {
      {type="item", name= "necro-alien-dna", amount=2},
	  {type="item", name= "stone", amount=3}
	},
	icon = "__necromant__/graphics/icons/dna_steak.png",
	icon_size = 64,
	order = "f"
  },
	-- Alien DNA from Enriched Bones: 
  {
    type = "recipe",
    name = "necro-alien-dna-from-ebones",
	energy_required = 10,
	category = "chemistry",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"necro-enriched-bones", 10},
	  {type="fluid", name="necro-alien-protein", amount=100},
	  {type="fluid", name="sulfuric-acid", amount=100}
    },
	results =
    {
      {type="item", name= "necro-alien-dna", amount=2},
	  {type="item", name= "stone", amount=8}
	},
	icon = "__necromant__/graphics/icons/dna_chemicals.png",
	icon_size = 64,
	order = "g"
  },
	-- Alien DNA from Chitin: 
  {
    type = "recipe",
    name = "necro-alien-dna-from-chitin",
	energy_required = 10,
	category = "chemistry",
	subgroup = "necro-dna",
    enabled = false,
    ingredients =
    {
      {"necro-chitin", 10},
	  {type="fluid", name="necro-alien-protein", amount=100},
	  {type="fluid", name="sulfuric-acid", amount=100}
    },
	results =
    {
      {type="item", name= "necro-alien-dna", amount=2},
	  {type="item", name= "stone", amount=8}
	      },
	icon = "__necromant__/graphics/icons/dna_chemicals.png",
	icon_size = 64,
	order = "h"
  },

})

end

