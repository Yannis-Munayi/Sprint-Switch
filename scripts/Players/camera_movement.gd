extends CharacterBody2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var INVERT_VELOCITY = 300
var GRA = Vector2(0,0)
var moving : float # the player's chosen movement
var direction : int # the default movement
var is_shrunk : bool = false
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var player_1: CharacterBody2D = $"../Player1"
@onready var player_3: CharacterBody2D = $"../Player3"
@onready var player_2: CharacterBody2D = $"../Player_2"
@onready var camera_2d: Camera2D = $Camera2D

func _physics_process(delta: float) -> void:
	
	direction = 1
	
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
			
	
	velocity.x = 1 * SPEED
		
	# Links the camera's vertical movement to player 1's
	
	
	move_and_slide()
"""
extends "res://scripts/base_player.gd"

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("switch_to_3") or Input.is_action_just_pressed("switch_to_2"):
		visible = false
	if Input.is_action_just_pressed("switch_to_1"):
		visible = true
	
	if direction > 0:
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
"""
