extends LevelParent

func _ready():
	print("start level 1")
	$Player.gravity = 5
	
func get_next_scene():
	return "res://scenes/level2.tscn"

func _on_portal_2_player_entered_portal(_body, portal_position):
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property($Player,"position",portal_position,1.5)
	tween.connect("finished", change_scene)

func change_scene():	
	TransitionLayer.change_scene("res://scenes/level1.tscn")
	

