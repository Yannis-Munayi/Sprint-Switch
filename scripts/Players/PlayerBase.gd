extends CharacterBody2D

# Shared constants
const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var INVERT_VELOCITY = 300
var GRA = Vector2(0, 980)

# Shared variables
var moving: float
var direction: int
var is_shrunk: bool = false
@onready var player_1: CharacterBody2D = $"Player Skeletton/Player1"
@onready var mult_player: CharacterBody2D = $"Player Skeletton/MultPlayer"
@onready var player_2: CharacterBody2D = $"Player Skeletton/Player_2"
@onready var player_3: CharacterBody2D = $"Player Skeletton/player3"

# Shared nodes
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
	
func _physics_process(delta: float) -> void:
	var current_scene = get_tree().current_scene
	if str(current_scene) == "Multiplayer Level:<Node2D#32732349711>":	
		player_1.visible = false
		mult_player.visible = true
	else:
		print(0)
		mult_player.visible = false
		if player_2.visible == false and player_3.visible == false:
			player_1.visible = true
	
	handle_gravity(delta)
	handle_jumping()
	handle_basic_movement()
	handle_advanced_movement()
	handle_animation()
	move_and_slide()
	handle_switching()

func handle_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity += GRA * delta

func handle_jumping() -> void:
	if Input.is_action_just_pressed("jump"):
		if is_on_floor() and not animated_sprite_2d.flip_v:
			velocity.y = JUMP_VELOCITY
		elif is_on_ceiling() and animated_sprite_2d.flip_v:
			velocity.y = JUMP_VELOCITY * -1

func handle_switching() -> void:
	if Input.is_action_just_pressed("invert_gravity") and (is_on_ceiling() or is_on_floor()):
		INVERT_VELOCITY *= -1
		velocity.y = INVERT_VELOCITY
		GRA.y *= -1
		animated_sprite_2d.flip_v = not animated_sprite_2d.flip_v

func handle_basic_movement() -> void:
	direction = 1
	velocity.x = direction * SPEED if direction else move_toward(velocity.x, 0, SPEED)
	
func handle_advanced_movement() -> void:
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
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

func handle_animation() -> void:
	if is_on_floor() or is_on_ceiling():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("jump")
	animated_sprite_2d.flip_h = direction < 0

func shrink() -> void:
	if Input.is_action_just_pressed("shrink"):
		if not is_shrunk:
			scale /= 1.5
			collision_shape_2d.scale /= 1.5
			is_shrunk = true
		else:
			scale *= 1.5
			collision_shape_2d.scale *= 1.5
			is_shrunk = false
