# 撤销触发器
advancement revoke @s only naturecraft:left_click

# target标签
execute as @e[type=minecraft:interaction,tag=NatureCraft.interaction_box,sort=nearest] if data entity @s attack run \
        function naturecraft:left_click/1