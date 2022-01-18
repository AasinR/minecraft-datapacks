# remove recipe from recipe book
recipe take @s custom_crafting:mending_book

# revoke advancement so it can be crafted again
advancement revoke @s only custom_crafting:mending_book_adv
clear @s minecraft:knowledge_book

give @s minecraft:enchanted_book{ StoredEnchantments: [{id:"mending", lvl:1}] }