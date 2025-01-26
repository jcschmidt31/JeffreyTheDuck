extends Area2D

# Reference to the PlayerStartPosition node
@onready var start_position = get_node("/Game/Level/PlayerStart")
var x = -699
var y = 263


func _ready() -> void:
	connect("body_entered", _on_body_entered)
	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":  # Check if the body is the player
		##body.position = start_position  # Reset player position
		body.position = Vector2(x, y)
		body.health = 0  # Optional: Reset player health or other stats
