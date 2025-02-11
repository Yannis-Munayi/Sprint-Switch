extends "res://Switch-Sprint/scripts/Players/PlayerBase.gd"

@onready var player_2: CharacterBody2D = $"."
@onready var player_1: CharacterBody2D = $"../Player1"
@onready var player_3: CharacterBody2D = $"../Player3"

func _physics_process(delta: float) -> void:
	var current_scene = get_tree().current_scene
	if str(current_scene) != "Multiplayer Level:<Node2D#32732349711>":	
		if Input.is_action_just_pressed("switch_to_1") or Input.is_action_just_pressed("switch_to_3"):
			player_2.visible = false
		if Input.is_action_just_pressed("switch_to_2"):
			player_2.visible = true
			if player_1.is_on_ceiling():
				position.y = player_1.position.y * delta

	moving = Input.get_axis("move_left", "move_right")
	if moving:
		direction = moving
		if direction == 1:
			direction = 2
		else:
			direction = 1

	handle_gravity(delta)
	handle_jumping()
	handle_basic_movement()
	handle_advanced_movement()
	handle_animation()
	move_and_slide()
