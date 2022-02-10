# reset right click detection
scoreboard players set @s nauticUsed 0

# inicialize timer
execute unless score @s stormTimer matches 0.. run scoreboard players set @s stormTimer 0

# summon thunder storm
execute if score @s stormTimer matches 0 run weather thunder
execute if score @s stormTimer matches 0 run tellraw @a {"text": "A storm has been summoned!", "color": "#33B4C1"}

# cooldown timer
scoreboard players set @s const 60

scoreboard players operation @s minuteTimer = @s stormTimer
scoreboard players operation @s minuteTimer /= %minute_const const

scoreboard players operation @s secondTimer = @s stormTimer
scoreboard players operation @s secondTimer /= %second_const const
scoreboard players operation @s const *= @s minuteTimer
scoreboard players operation @s secondTimer -= @s const

execute unless score @s stormTimer matches 0 run tellraw @s [{"text": " ", "color": "#FC5454"}, {"text": "You can use this ability in ", "color": "#F9A129"}, {"score": {"name": "@s", "objective": "minuteTimer"}}, {"text": " min ", "color": "#F9A129"}, {"score": {"name": "@s", "objective": "secondTimer"}}, {"text": " seconds!", "color": "#F9A129"}]

# set 20 minutes timer after use
execute if score @s stormTimer matches 0 as @s[nbt={ActiveEffects:[{Id:29b}]}] run scoreboard players set @s stormTimer 24000