extends Control

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("return_to_previous_window"):
		get_tree().change_scene_to_packed(load("res://Switch-Sprint/scenes/Menus/main_menu.tscn"))
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
