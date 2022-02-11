# remove recipe from recipe book
recipe take @s artifact:wanderer_artifact

# revoke advancement so it can be crafted again
advancement revoke @s only artifact:wanderer_adv
clear @s minecraft:knowledge_book
kill @e[type=item, nbt={ Item: { id:"minecraft:knowledge_book" } }]

function artifact:give_wanderer