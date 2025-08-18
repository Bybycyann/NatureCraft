data modify storage naturecraft:0 model.pale_oak_pot set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "item_name": {"translate":"","fallback":"苍白盆栽"},\
    "display": {\
      "model": "naturecraft:0/pale_oak_pot"\
    },\
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
        }\
      }\
    },\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"pale_oak_pot",model:"naturecraft:0/pale_oak_pot",count:1,type:0}