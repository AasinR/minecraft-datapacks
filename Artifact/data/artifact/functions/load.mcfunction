# load scoreboards
scoreboard objectives add artifact_type dummy
scoreboard objectives add arrow_shot minecraft.used:minecraft.bow
scoreboard objectives add inHand dummy
scoreboard objectives add summonStormTimer dummy
scoreboard players set %timer summonStormTimer 0
scoreboard objectives add nauticUsed minecraft.used:carrot_on_a_stick

# passive mobs team
team add passive
team modify passive seeFriendlyInvisibles false

tellraw @a {"text": "Data Pack loaded: Artifact", "color": "#FF0000"}