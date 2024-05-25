extends Node

func _ready():
	pass
func _on_play_pressed():
	TransitionLayer.change_scene("res://scenes/level1.tscn")


func _on_quit_pressed():
	get_tree().quit()
