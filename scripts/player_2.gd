extends CharacterBody2D
# 4
const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var INVERT_VELOCITY = 300
var GRA: Vector2 = Vector2(0,980)
var moving : float # the player's chosen movement
var direction : int # the default movement
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var player_2: CharacterBody2D = $"."
@onready var player_1: CharacterBody2D = $"../Player1"
@onready var player_3: CharacterBody2D = $"../player3"

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += GRA * delta
		
	# Allows the user to jump if on the floor
	if Input.is_action_just_pressed("jump") and is_on_floor():
		if animated_sprite_2d.flip_v == false:
			velocity.y = JUMP_VELOCITY
	
	# Allows the user to jump if on the ceiling
	elif Input.is_action_just_pressed("jump") and is_on_ceiling():
		if animated_sprite_2d.flip_v == true:
			velocity.y = JUMP_VELOCITY * -1
		
	if Input.is_action_just_pressed("switch_to_1") or Input.is_action_just_pressed("switch_to_3"):
		player_2.visible = false	
		
	if Input.is_action_just_pressed("switch_to_2"):
		player_2.visible = true
		if player_1.is_on_ceiling():
			position.y = player_1.position.y * delta
		
		
	# Get the input direction and handle the movement/deceleration.
	moving = Input.get_axis("move_left", "move_right")
	if moving:
		direction = moving
		if direction == 1:
			direction = 2
	else:
		direction = 1
	# Flips the character when moving left or right
	if direction >0:
		animated_sprite_2d.flip_h = false
	elif direction < 0:
		animated_sprite_2d.flip_h = true
		
	# Plays animation
	if is_on_floor():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
		
	elif is_on_ceiling():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
			
	else:
		animated_sprite_2d.play("jump")
	
	# Applies movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if visible:
		player_1.position = player_2.position
		player_3.position = player_2.position

	move_and_slide()
