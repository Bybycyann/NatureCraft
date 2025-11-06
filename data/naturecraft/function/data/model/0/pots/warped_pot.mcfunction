data modify storage naturecraft:0 model.warped_pot set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "towards": true,\
    "item_name": {"translate":"","fallback":"诡异菌盆栽"},\
    "display": {\
      "model": "naturecraft:0/pots/warped_pot"\
    },\
    "light_level": 8,\
    "collision_box": {\
      "scale": 0.5,\
      "offset_x": 0.0,\
      "offset_y": 0.0,\
      "offset_z": 0.0\
    },\
    "interaction_box": {\
      "height": 0.501,\
      "width": 0.501,\
    },\
    "event": {\
      "const": {\
        "place": {\
          "sound": "block.stone.place"\
        },\
        "left_click": {\
          "sound": "block.stone.break"\
        }\
      }\
    },\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"warped_pot",model:"naturecraft:0/pots/warped_pot",count:1,type:0}