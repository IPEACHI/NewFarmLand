extends StaticBody2D

var haveseed = false

func _physics_process(delta):
	if haveseed == false:
		if Global.numofberryseed == 1:
			var berryseed = preload("res://berry_seedpack.tscn").instance()
			add_child(berryseed)
			haveseed = true

	if Global.numofberryseed == 0:
		haveseed = false
	

		


