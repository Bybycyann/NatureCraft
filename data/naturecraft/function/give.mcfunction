$scoreboard players set #Temp NatureCraft.var $(type)

$execute if score #Temp NatureCraft.var matches 0 run \
  loot give @s loot {\
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
                "id": "minecraft:marker",\
                "Tags": ["NatureCraft.data","NatureCraft.init"],\
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

$execute if score #Temp NatureCraft.var matches 1 run \
  loot give @s loot {\
    "pools": [{\
      "rolls": $(count),\
      "entries": [{\
        "type": "minecraft:item",\
        "name": "minecraft:item_frame",\
        "functions": [\
          {\
            "function": "set_components",\
            "components": {\
              "minecraft:item_model": "$(model)",\
              "minecraft:entity_data": {\
                "id": "minecraft:item_frame",\
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