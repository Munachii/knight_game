extends Area2D


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

@onready var timer = $Timer

func _on_body_entered(_body):
	print("You died!")
	Engine.time_scale = 0.5
	_body.get_node("CollisionShape2D").queue_free()
	timer.start()
	

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
	
