# remove levitation
effect clear @s minecraft:levitation

# ender bow
# apply an ender_shot tag to the shot arrow
execute as @s[nbt={SelectedItem: {id: "minecraft:bow", Count: 1b, tag: {display: {Name: '{"text":"Ender Bow"}'}}}},scores={ender_shot=1..}] at @s run tag @e[type=minecraft:arrow,sort=nearest,limit=1] add ender_shot

execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:bow", tag: {display: {Name: '{"text":"Ender Bow"}'}}}]},scores={ender_shot=1..}] at @s run tag @e[type=minecraft:arrow,sort=nearest,limit=1] add ender_shot

# give shot arrow custom potion effect
execute as @s[nbt={SelectedItem: {id: "minecraft:bow", Count: 1b, tag: {display: {Name: '{"text":"Ender Bow"}'}}}},scores={ender_shot=1..}] as @s run data merge entity @e[tag=ender_shot, sort=nearest, limit=1] {CustomPotionEffects:[{Id:27b,Amplifier:0b,Duration:1,ShowParticles:0b}],Potion:"minecraft:empty",CustomPotionColor:5375826}

execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:bow", tag: {display: {Name: '{"text":"Ender Bow"}'}}}]},scores={ender_shot=1..}] as @s run data merge entity @e[tag=ender_shot, sort=nearest, limit=1] {CustomPotionEffects:[{Id:27b,Amplifier:0b,Duration:1,ShowParticles:0b}],Potion:"minecraft:empty",CustomPotionColor:5375826}

# arrow effects (Id:27b, Amplifier:0b)
execute as @e[tag=ender_shot] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.0 0.0 0.0 0 2
execute as @e[tag=ender_shot,nbt={inGround: 1b}] at @s run summon area_effect_cloud ~ ~ ~ {Radius:3f, Duration:60, Color:10949031, Potion:"minecraft:harming"}
execute as @e[nbt={ActiveEffects:[{Id:27b, Amplifier:0b}]}] at @s run summon area_effect_cloud ~ ~ ~ {Radius:3f, Duration:60, Color:10949031, Potion:"minecraft:harming"}
execute as @e[tag=ender_shot,nbt={inGround: 1b}] at @s run kill @s

# reset scoreboard
scoreboard players remove @s[scores={ender_shot=1..}] ender_shot 1