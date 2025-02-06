extends Node2D

@onready var player_1: CharacterBody2D = $Player1
@onready var player_2: CharacterBody2D = $Player_2
@onready var player_3: CharacterBody2D = $player3

func _ready():
	player_1.visible = false
	player_2.visible = false
	player_3.visible = false
	

func _process(delta):
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
