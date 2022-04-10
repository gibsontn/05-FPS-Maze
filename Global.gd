extends Node

var menu = null


func update_instructions():
	var Instructions_Label = get_node_or_null("/root/Game/UI/Instructions")
	if Instructions_Label != null:
		Instructions_Label.show_labels()
	

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		if menu == null:
			menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				menu.show()
			else:
				get_tree().paused = false
				menu.hide()
