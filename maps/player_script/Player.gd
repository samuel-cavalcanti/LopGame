extends KinematicBody2D

var motion = Vector2()
const velPlayer = 750


func _physics_process(delta):
	#motion.y += gravity

	if Input.is_action_pressed('ui_right'):
		motion.x = velPlayer
		$Sprite2.play('Run')
		$Sprite2.flip_h = false

	elif Input.is_action_pressed('ui_left'):
		motion.x = -velPlayer
		$Sprite2.play('Run')
		$Sprite2.flip_h = true



	elif Input.is_action_pressed('ui_up'):
		motion.y = -velPlayer
		$Sprite2.play('Run')



	elif Input.is_action_pressed('ui_down'):
		motion.y = velPlayer
		$Sprite2.play('Run')

	else:
		motion.y = 0
		motion.x = 0
		$Sprite2.play('Idle')

	move_and_slide(motion)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
