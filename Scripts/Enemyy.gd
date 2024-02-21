extends Area2D

func _process(_delta):
	position.x += 3
func _on_body_entered(body):
	if(body.name=="CharacterBody2D"):
		queue_free()
