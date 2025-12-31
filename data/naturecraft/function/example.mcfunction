setblock ~ -60 ~ minecraft:barrel

data modify block ~ -60 ~ Items set from storage namespace:example datalist[-1]
loot replace block ~ -60 ~ container.26 loot namespace:player_head
execute store result storage namespace:example temp int 1 run data get storage namespace:example datalist[-1]
execute positioned ~ -60 ~ :
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:0} run return run item replace block ~ ~ ~ container.0 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:1} run return run item replace block ~ ~ ~ container.1 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:2} run return run item replace block ~ ~ ~ container.2 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:3} run return run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:4} run return run item replace block ~ ~ ~ container.4 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:5} run return run item replace block ~ ~ ~ container.5 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:6} run return run item replace block ~ ~ ~ container.6 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:7} run return run item replace block ~ ~ ~ container.7 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:8} run return run item replace block ~ ~ ~ container.8 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:9} run return run item replace block ~ ~ ~ container.9 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:10} run return run item replace block ~ ~ ~ container.10 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:11} run return run item replace block ~ ~ ~ container.11 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:12} run return run item replace block ~ ~ ~ container.12 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:13} run return run item replace block ~ ~ ~ container.13 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:14} run return run item replace block ~ ~ ~ container.14 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:15} run return run item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:16} run return run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:17} run return run item replace block ~ ~ ~ container.17 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:18} run return run item replace block ~ ~ ~ container.18 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:19} run return run item replace block ~ ~ ~ container.19 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:20} run return run item replace block ~ ~ ~ container.20 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:21} run return run item replace block ~ ~ ~ container.21 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:22} run return run item replace block ~ ~ ~ container.22 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:23} run return run item replace block ~ ~ ~ container.23 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:24} run return run item replace block ~ ~ ~ container.24 from block ~ ~ ~ container.26
    execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:25} run return run item replace block ~ ~ ~ container.25 from block ~ ~ ~ container.26
item replace block ~ -60 ~ container.26 with minecraft:air
data modify storage namespace:example datalist[-1] set from block ~ -60 ~ Items
execute if predicate {"condition":"minecraft:value_check","value":{"type":"storage","storage":"namespace:example","path":"temp"},range:17} run data modify storage namespace:example datalist append value []

setblock ~ -60 ~ minecraft:bedrock


execute align xyz positioned ~0.5 ~ ~0.5 summon mannequin run rotate @s ~ ~