extends AnimatedSprite2D

func ready():
	$AnimatedSprite2D.is_playing()

func _physics_process(_delta):
	if Input.is_action_just_pressed("down"):
		self.play("down attack")
	elif Input.is_action_just_pressed("up"):
		self.play("up attack")
	elif Input.is_action_just_pressed("left"):
		self.flip_h = true
		self.play("horizontal attack")
	elif Input.is_action_just_pressed("right"):
		self.flip_h = false
		self.play("horizontal attack")
	elif self.animation != "idle" && self.frame>1:
		self.play("idle")
