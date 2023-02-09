extends StaticBody2D


var haveseed = false

func _physics_process(delta):
	if haveseed == false:
		if Global.numofcarrotseed == 1:
			var carrotseed = preload("res://carrot_seedpack.tscn").instance()
			add_child(carrotseed)
			haveseed = true

	if Global.numofcarrotseed == 0:
		haveseed = false
	

		

