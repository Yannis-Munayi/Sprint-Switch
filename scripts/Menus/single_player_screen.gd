extends Control
@onready var story: Button = $Panel/Story

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	story.button_down.connect(load_levels)

func load_levels() -> void:
	get_tree().change_scene_to_packed(preload("res://scenes/Levels/level_1.tscn"))
