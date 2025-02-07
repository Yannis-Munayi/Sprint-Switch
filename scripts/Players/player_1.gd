extends "res://Switch-Sprint/scripts/Players/PlayerBase.gd"
@onready var player_1: CharacterBody2D = $"."
@onready var player_2: CharacterBody2D = $"../Player_2"
@onready var player_3: CharacterBody2D = $"../player3"
@onready var mult_player: CharacterBody2D = $"../MultPlayer"

func _physics_process(delta: float) -> void:
	# Determines wheather which players to display based on game mode
	var current_scene = get_tree().current_scene
	
	if str(current_scene) == "Multiplayer Level:<Node2D#32732349711>":	
		player_1.visible = false
		mult_player.visible = true
	else:
		mult_player.visible = false
		if player_2.visible == false and player_3.visible == false:
			player_1.visible = true
	
	# Allows switching to players 2 & 3
	if str(current_scene) != "Multiplayer Level:<Node2D#32732349711>":	
		if Input.is_action_just_pressed("switch_to_3") or Input.is_action_just_pressed("switch_to_2"):
			player_1.visible = false
		if Input.is_action_just_pressed("switch_to_1"):
			player_1.visible = true

# Adds functionality to player 1
	handle_gravity(delta)
	handle_switching()
	handle_movement()
	handle_animation()
	move_and_slide()
