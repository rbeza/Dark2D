extends Node2D

signal player_interacted

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var animated_sprite = $AnimatedSprite2D
##@onready var lever_sound = preload("string")

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	
func _on_interact():
	player_interacted.emit()
	animated_sprite.play("pull_lever") 

