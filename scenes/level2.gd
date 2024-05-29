extends LevelParent

func _ready():
	print("level 2 start")
	$Player.gravity = 10

func get_next_scene():
	return "res://scenes/level1.tscn"

func _on_portal_2_player_entered_portal(body, portal_position):
	pass
	
