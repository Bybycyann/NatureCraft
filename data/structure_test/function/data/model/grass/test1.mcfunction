data modify storage structure_test:grass model.test1 set value {\
  "template": {\
    "name": "structure_test:grass",\
    "nbt": "short_grass"\
  },\
  "model":{\
    "towards": false,\
    "item_name": {"translate":"","fallback":"测试蓝草1"},\
    "display": {\
      "model": "structure_test:grass/test1"\
    }\
  }\
}

function naturecraft:give {name:"structure_test:grass","nbt":"test1",model:"structure_test:grass/test1",count:1,type:0}