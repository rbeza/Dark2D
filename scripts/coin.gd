extends Area2D

##signal allows us to trigger code based on events that happen in game, there are many built in signals
@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer


func _on_body_entered(_body):
	game_manager.add_point()
	print("+1 coin!")
	animation_player.play("pickup")
