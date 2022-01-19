# remove recipe from recipe book
recipe take @s custom_crafting:efficiency6_diamond

# revoke advancement so it can be crafted again
advancement revoke @s only custom_crafting:efficiency6_diamond_adv
clear @s minecraft:knowledge_book

give @s minecraft:diamond_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 6s}]}