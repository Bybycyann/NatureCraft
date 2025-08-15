# 撤销触发器
advancement revoke @s only naturecraft:right_click

# target标签
execute as @e[type=minecraft:interaction,tag=NatureCraft.interaction_box,sort=nearest] if data entity @s interaction run \
        function naturecraft:right_click/1