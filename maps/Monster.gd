extends StaticBody2D


var initPos
var finalPos 

const velMons = 20

func _ready():
	initPos = $'.'.position.y
	finalPos = initPos  - 15

	
	
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	
	if  $'.'.position.y  > finalPos :
		$'.'.position.y -= velMons
	else:
		$'.'.position.y += velMons
	$'.'.position.x -= 1.1
	
 
	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
