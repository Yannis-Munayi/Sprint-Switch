extends Control

@onready var single_player: Button = $SinglePlayer
@onready var mult: Button = $Multiplayer
@onready var options: Button = $Options
const SINGLE_PLAYER_SCREEN = preload("res://scenes/Menus/single_player_screen.tscn")

func _ready() -> void:
	single_player.button_down.connect(_on_single_player_pressed)
	mult.button_down.connect(_on_multiplayer_pressed)
	options.button_down.connect(_on_option_pressed)

# Loads up the single player menu (the game for now)
func _on_single_player_pressed() -> void:
	get_tree().change_scene_to_packed(SINGLE_PLAYER_SCREEN)


func _on_multiplayer_pressed() -> void:
	get_tree().change_scene_to_packed(preload(("res://scenes/Menus/multilayer_screen.tscn")))


func _on_option_pressed() -> void:
	get_tree().change_scene_to_packed(preload("res://scenes/Menus/options.tscn"))
