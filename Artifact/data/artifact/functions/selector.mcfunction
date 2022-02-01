# store artifact type
#   ender: 673501
#   wither: 673502
#   guardian: 673503
execute if entity @s[nbt={SelectedItem: {id: "minecraft:enchanted_book"}}] store result score @s artifact_type run data get entity @s SelectedItem.tag.artifact_type

execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:enchanted_book"}]}] store result score @s artifact_type run data get entity @s Inventory[{Slot:-106b}].tag.artifact_type

# artifact is in hand
scoreboard players set @s inHand 1

# run selected script
execute if score @s artifact_type matches 673501 as @s run function artifact:ender
execute if score @s artifact_type matches 673502 as @s run function artifact:scorched
execute unless score @s artifact_type matches 673502 as @s run team leave @s