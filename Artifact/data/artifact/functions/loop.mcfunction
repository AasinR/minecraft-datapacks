# artifact detection
execute as @a[nbt={SelectedItem: {id: "minecraft:enchanted_book", Count: 1b, tag: {artifact: 1b}}}] run function artifact:selector

execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:enchanted_book", Count: 1b, tag: {artifact: 1b}}]}] run function artifact:selector