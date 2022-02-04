# give resistance effect
effect give @s resistance 1 1 false

# run on right click
execute if score @s nauticUsed matches 1.. as @s[nbt={ActiveEffects:[{Id:29b}]}] run function artifact:nautic_activate