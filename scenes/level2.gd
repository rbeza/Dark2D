extends LevelParent

func _ready():
	print("level 2 start")

func get_next_scene():
	return "res://scenes/level1.tscn"
