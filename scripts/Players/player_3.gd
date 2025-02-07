extends "res://Switch-Sprint/scripts/Players/PlayerBase.gd"

@onready var player_3: CharacterBody2D = $"."
@onready var player_1: CharacterBody2D = $"../Player1"
@onready var player_2: CharacterBody2D = $"../Player_2"

func _physics_process(delta: float) -> void:
	var current_scene = get_tree().current_scene
	if str(current_scene) != "Multiplayer Level:<Node2D#32732349711>":	
		if Input.is_action_just_pressed("switch_to_1") or Input.is_action_just_pressed("switch_to_2"):
			player_3.visible = false
		if Input.is_action_just_pressed("switch_to_3"):
			player_3.visible = true

	shrink()

	handle_gravity(delta)
	handle_movement()
	handle_animation()
	move_and_slide()
