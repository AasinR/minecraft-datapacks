# artifact detection
execute as @a[nbt={SelectedItem: {id: "minecraft:enchanted_book", Count: 1b, tag: {artifact: 1b}}}] run function artifact:selector

execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:enchanted_book", Count: 1b, tag: {artifact: 1b}}]}] run function artifact:selector

# in hand detection
execute as @a if score @s inHand matches 0 run function artifact:not_in_hand

# reset inHand
scoreboard players set @a[scores={inHand=1}] inHand 0