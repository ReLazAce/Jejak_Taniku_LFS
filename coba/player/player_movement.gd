extends CharacterBody2D

@export var speed = 10000.0

func _physics_process(_delta):
	var direction = Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
		"ui_down"
	)

	velocity = direction * speed
	move_and_slide()

	if direction != Vector2.ZERO:
		$AnimatedSprite2D.play("walk")

		if direction.x < 0:
			$AnimatedSprite2D.flip_h = true
		elif direction.x > 0:
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.stop()
