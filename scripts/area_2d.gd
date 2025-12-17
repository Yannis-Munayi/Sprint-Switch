extends Area2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var player_1: CharacterBody2D = $"../Level Template/Player Skeletton/Player1"
@onready var base_player: CharacterBody2D = $"../Level Template/Player Skeletton"
@onready var camera_movement: CharacterBody2D = $"../Level Template/Player Skeletton/Camera Movement"
@onready var camera_2d: Camera2D = $"../Level Template/Player Skeletton/Camera Movement/Camera2D"

func _process(delta: float) -> void:
	#print(player_1.transform.determinant)
	pass

func _on_body_entered() -> void:
	var checkpoint : Vector2 = Vector2(collision_shape_2d.position.x, float(str(player_1.transform.y)))
	#player_1.scale.x = 7
	#camera_movement.position.x = 500
	#camera_2d.position.x = 500
	#global_position.x = 500
	pass # Replace with function body.
