extends Node2D

var blocks = []
var creatures = []
var traps = []
var summons = []

var dungeonpoints = 0;

func _ready():
	
	namelist(blocks,{name="None",cost=0,level=0,isbuy=false,buycost=0})
	namelist(blocks,{name="Wall",cost=0,level=0,isbuy=false,buycost=0})
	namelist(blocks,{name="Floor",cost=0,level=0,isbuy=false,buycost=0})
	
	#for block in blocks:
		#print(block)
	
	namelist(traps,{name="None",cost=0,level=0,isbuy=false,buycost=0})
	namelist(traps,{name="Door",cost=0,level=0,isbuy=false,buycost=0})
	namelist(traps,{name="Spike",cost=0,level=0,isbuy=false,buycost=0})
	
	namelist(summons,{name="None",cost=0,level=0,isbuy=false,buycost=0})
	namelist(summons,{name="Slime",cost=0,level=0,isbuy=false,buycost=0})
	namelist(summons,{name="Green Slime",cost=0,level=0,isbuy=false,buycost=0})
	
	#print("core")
	#for trap in traps:
		#print(trap)
		#print(traps[trap].cost)
	#pass
	
func namelist(_array,value):
	_array.push_back(value)
	pass