# ``
# Error
# 未知的模型对象
# ```

tellraw @s [\
    {"text": "[nc] ", "hover_event": {"action": "show_text", "value": [{"text": "PlayerDataExpansion"}, "\n", {"translate": "peminder.naturecraft.pack_description", "fallback": "[lib] Easily register interactive models in the game.", color: "green"}]}},\
    {"translate": "error.naturecraft.model.summon.unknown_model", "fallback": "Unknown model '%s'", "with": [{"storage": "naturecraft:main", "nbt": "io.stack[-1].CONTEXT.namespace_id"}], "color": "red", "hover_event": {"action": "show_text", "value": [{text:"#naturecraft:model.summon",color:"yellow"}]}}\
]
data remove storage naturecraft:main io.stack[-1]
