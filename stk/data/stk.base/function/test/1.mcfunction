execute store result score #i stk.var run scoreboard players add #i stk.var 1
execute if score #i stk.var matches 5000 run tellraw @a {score:{name:"#i",objective:"stk.var"}}