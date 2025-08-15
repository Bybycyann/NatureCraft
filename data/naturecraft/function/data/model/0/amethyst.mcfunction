data modify storage naturecraft:0 model.amethyst set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "item_name": {"translate":"","fallback":"水晶簇"},\
    "display": {\
      "model": "naturecraft:0/amethyst/0",\
      "submodels":[{\
        "model": "naturecraft:0/amethyst/1",\
        "common": {\
          "transformation": {\
            "left_rotation":[0.0f,0.924f,0.0f,0.383f],\
            "translation": [0.0f,0.5f,0.0f]\
          }\
        }\
      }]\
    },\
    "light_level": 5,\
    "collision_box": {\
      "scale": 0.4374,\
      "offset_x": 0.0,\
      "offset_y": 0.0,\
      "offset_z": 0.0\
    },\
    "interaction_box": {\
      "height": 0.4375,\
      "width": 0.625,\
    }\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"amethyst",model:"naturecraft:0/amethyst/0",count:1}