extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process_input(true)
	pass
	
func _input(event):
	var lmouse = get_node("LMouse")
	#print("mouse")
	if lmouse != null:
		lmouse.set_text("Mouse x:" + str(get_global_mouse_pos().x)  + " y:"  + str(get_global_mouse_pos().y))