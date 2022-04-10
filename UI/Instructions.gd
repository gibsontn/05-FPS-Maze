extends Control


func show_labels():
	get_tree().paused = true
	$Task.text = "Navigate the maze and escape the darkness!"
	show()
	$Timer.start()


func _on_Timer_timeout():
	hide()
	get_tree().paused = false
