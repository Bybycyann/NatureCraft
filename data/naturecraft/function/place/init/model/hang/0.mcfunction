## S
execute if score #Temp NatureCraft.var matches -45..45 run function naturecraft:place/init/model/hang/s
## W
execute if score #Temp NatureCraft.var matches 45..135 run function naturecraft:place/init/model/hang/w
## E
execute if score #Temp NatureCraft.var matches -135..-45 run function naturecraft:place/init/model/hang/e
## N
execute unless score #Temp NatureCraft.var matches -135..135 run function naturecraft:place/init/model/hang/n