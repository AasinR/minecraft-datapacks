# artifact detection
execute as @a[nbt={SelectedItem: {tag: {artifact: 1b}}}] run function artifact:selector

execute as @a[nbt={Inventory: [{Slot: -106b, tag: {artifact: 1b}}]}] run function artifact:selector

# in hand detection
execute as @a if score @s inHand matches 0 run function artifact:not_in_hand

# reset scores
scoreboard players set @a[scores={inHand=1}] inHand 0
scoreboard players set @a[scores={nauticUsed=1..}] nauticUsed 0
scoreboard players remove @a[scores={stormTimer=1..}] stormTimer 1