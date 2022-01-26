# load scoreboards
scoreboard objectives add artifact_type dummy

# create ender artifact arrow detection scoreboard
scoreboard objectives add ender_shot minecraft.used:minecraft.bow

tellraw @a {"text": "Data Pack loaded: Artifact", "color": "#FF0000"}