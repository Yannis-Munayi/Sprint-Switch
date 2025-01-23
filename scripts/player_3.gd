extends CharacterBody2D
# 3
const SPEED : float= 130.0
const JUMP_VELOCITY : float = -300.0
var INVERT_VELOCITY : int = 300
var GRA = Vector2(0,980)
var is_shrunk : bool = false
var moving : float # the player's chosen movement
var direction : int # the default movement

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var player_3: CharacterBody2D = $"."
@onready var player_1: CharacterBody2D = $"../Player1"
@onready var player_2: CharacterBody2D = $"../Player_2"

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
			
	#TODO Can slow down time
			
	if Input.is_action_just_pressed("shrink"):
		if is_shrunk == false:
			scale = scale/1.5
			collision_shape_2d.scale = collision_shape_2d.scale/1.5
			is_shrunk = true
			
		else: 
			scale = scale * 1.5
			collision_shape_2d.scale = collision_shape_2d.scale * 1.5
			is_shrunk = false
			
	if Input.is_action_just_pressed("switch_to_1") or Input.is_action_just_pressed("switch_to_2"):
		player_3.visible = false
			
		
	if Input.is_action_just_pressed("switch_to_3"):
		player_3.visible = true
		
	direction = 1
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
		
	move_and_slide()
