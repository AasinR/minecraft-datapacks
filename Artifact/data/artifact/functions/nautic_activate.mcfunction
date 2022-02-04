# summon thunder storm
execute if score %timer summonStormTimer matches 0 run weather thunder
execute if score %timer summonStormTimer matches 0 run tellraw @a {"text": "A storm has been summoned!", "color": "#33B4C1"}

scoreboard players set %minute_const summonStormTimer 1200
scoreboard players set %second_const1 summonStormTimer 20
scoreboard players set %second_const2 summonStormTimer 60

scoreboard players operation %minutes summonStormTimer = %timer summonStormTimer
scoreboard players operation %minutes summonStormTimer /= %minute_const summonStormTimer

scoreboard players operation %seconds summonStormTimer = %timer summonStormTimer
scoreboard players operation %seconds summonStormTimer /= %second_const1 summonStormTimer
scoreboard players operation %second_const2 summonStormTimer *= %minutes summonStormTimer
scoreboard players operation %seconds summonStormTimer -= %second_const2 summonStormTimer

execute unless score %timer summonStormTimer matches 0 run tellraw @s [{"text": " ", "color": "#FC5454"}, {"text": "You can use this ability in ", "color": "#F9A129"}, {"score": {"name": "%minutes", "objective": "summonStormTimer"}}, {"text": " min ", "color": "#F9A129"}, {"score": {"name": "%seconds", "objective": "summonStormTimer"}}, {"text": " seconds!", "color": "#F9A129"}]

# set 20 minutes timer after use
execute if score %timer summonStormTimer matches 0 as @s[nbt={ActiveEffects:[{Id:29b}]}] run scoreboard players set %timer summonStormTimer 24000