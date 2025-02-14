extends Node2D

@onready var player_1: CharacterBody2D = $Player1
@onready var player_2: CharacterBody2D = $Player_2
@onready var player_3: CharacterBody2D = $player3
@onready var mult_player: CharacterBody2D = $MultPlayer

func _ready():
	player_1.visible = false
	player_2.visible = false
	player_3.visible = false
	

func _process(delta):
	#if mult_player.visible == false:
	var current_scene = get_tree().current_scene
	if str(current_scene) == "Multiplayer Level:<Node2D#32816235791>":	
		player_1.visible = false
		mult_player.visible = true
		
	else:
		print(8)
		mult_player.visible = false
		if player_2.visible == false and player_3.visible == false:
			player_1.visible = true
			
		if Input.is_action_just_pressed("switch_to_1"):
			player_1.visible = true
			player_2.visible = false
			player_3.visible = false

		elif Input.is_action_just_pressed("switch_to_2"):
			player_1.visible = false
			player_2.visible = true
			player_3.visible = false

		elif Input.is_action_just_pressed("switch_to_3"):
			player_1.visible = false
			player_2.visible = false
			player_3.visible = true
