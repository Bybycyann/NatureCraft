execute store result score #break stk.var run function stk.base:for/2/cycle/2 with storage stk:io stack[-1].for
execute if score #break stk.var matches 1 run return 0
scoreboard players add #_for.i stk.var 1
execute if score #_for.i stk.var >= #_for.j stk.var run return 0
function stk.base:for/2/cycle/1