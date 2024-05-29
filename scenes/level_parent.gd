extends Node2D

class_name LevelParent

func get_next_scene():
	return "res://scenes/level1.tscn"
	
func _on_portal_player_entered_portal(_body: CharacterBody2D,portal_position: Vector2):
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property($Player,"position",portal_position,1.5)
	tween.connect("finished", change_scene)
	
func change_scene():	
	TransitionLayer.change_scene(get_next_scene())
	

	
