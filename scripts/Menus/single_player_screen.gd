extends Control
@onready var story: Button = $Panel/Story

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("return_to_previous_window"):
		get_tree().change_scene_to_packed(load("res://Switch-Sprint/scenes/Menus/main_menu.tscn"))
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	story.button_down.connect(load_levels)

func load_levels() -> void:
	get_tree().change_scene_to_packed(preload("res://Sprint-Switch/scenes/Levels/level_1.tscn"))
