execute store result score #_for.boole stk.var run function stk.base:for/2/condition/1 with storage stk:io stack[-1].for
execute unless score #_for.boole stk.var matches 1 run return 0
function stk.base:for/2/condition/_