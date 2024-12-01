extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $pickUp/AnimationPlayer2

## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass


func _on_body_entered(_body) :
	game_manager.add_point()
	animation_player.play("pickUp")
