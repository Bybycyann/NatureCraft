$loot give @s loot {\
  "pools": [{\
    "rolls": $(count),\
    "entries": [{\
      "type": "minecraft:item",\
      "name": "minecraft:cow_spawn_egg",\
      "functions": [\
        {\
          "function": "set_components",\
          "components": {\
            "minecraft:item_model": "$(model)",\
            "minecraft:entity_data": {\
              "id": "minecraft:interaction",\
              "Tags": ["NatureCraft.init"],\
              "data": {\
                "model": {\
                  "name": "$(name)",\
                  "nbt": "$(nbt)"\
                }\
              }\
            }\
          }\
        }\
      ]\
    }]\
  }]\
}

# tellraw @s [{"translate":"",fallback:"已将"},"$(count)",{"translate":"","fallback":"个"},{""}]