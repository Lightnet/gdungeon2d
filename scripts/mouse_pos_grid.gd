extends Node2D

func _ready():
	set_process(true)
	
func _process(delta):
	update() #update draw

func _draw():
	#your draw commands here
	#var mouse_x = get_viewport().get_mouse_pos().x
	#var mouse_y = get_viewport().get_mouse_pos().y
	#var from = get_viewport().get_mouse_pos()
	#var to =  get_viewport().get_mouse_pos()
	var from = get_global_mouse_pos()
	from.x = floor(from.x / 32) * 32
	from.y = floor(from.y / 32) * 32
	var to = from
	to.x += 32
	to.y += 32
	var tl = Vector2(min(to.x,from.x),min(to.y,from.y))
	var br = Vector2(max(to.x,from.x),max(to.y,from.y))
	var tr = Vector2(br.x,tl.y)
	var bl = Vector2(tl.x,br.y)
	var my = Rect2(tl, br-tl )
	draw_rect(my,Color(0,1,1,0.2))
	#draw_circle(from, 10, Color(0,1,1,0.2))
	#print("draw")
	#pass