# load variables
scoreboard objectives add artifact_type dummy
scoreboard objectives add arrow_shot minecraft.used:minecraft.bow
scoreboard objectives add inHand dummy
scoreboard objectives add nauticUsed minecraft.used:carrot_on_a_stick

# timer variables
scoreboard objectives add stormTimer dummy
scoreboard objectives add minuteTimer dummy
scoreboard objectives add secondTimer dummy
scoreboard objectives add const dummy
scoreboard players set %minute_const const 1200
scoreboard players set %second_const const 20

# passive mobs team
team add passive
team modify passive seeFriendlyInvisibles false

tellraw @a {"text": "Data Pack loaded: Artifact", "color": "#FF0000"}