extends LevelParent

func _ready():
	print("start level 1")
	
func get_next_scene():
	return "res://scenes/level2.tscn"
