extends CharacterBody2D

@export var max_speed = 130.0
var speed: int = max_speed
const JUMP_VELOCITY = -300.0
@onready var current_life: int = 3

var in_portal: bool = false

@export var gravity = 300
@export var jump_velocity : float = -300


#var move_to_position : Vector2
#var is_in_portal : bool = false
#var t : float

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite = $AnimatedSprite2D

func _process(_delta):
	Globals.player_pos = global_position

func _physics_process(_delta):
	if in_portal:
		animated_sprite.play("spin")
		return
		#position = position.lerp(move_to_position, t)
		#
	#gravity vector
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	# get input direction: -1, 0, 1.
	var direction = Input.get_axis("move_left", "move_right")
	
	# flip the sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
		
	# play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
	Globals.player_pos = global_position








func _on_portal_player_entered_portal(_body, _portal_position):
	in_portal = true

func _on_portal_2_player_entered_portal(_body, _portal_position):
	in_portal = true
