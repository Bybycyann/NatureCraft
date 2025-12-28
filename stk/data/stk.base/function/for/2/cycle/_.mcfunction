# init
scoreboard players set #_for.i stk.var 0
execute store result score #_for.j stk.var run data get storage stk:io stack[-1].for.cycle

function stk.base:for/2/cycle/1