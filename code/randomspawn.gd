extends StaticBody2D


var haveseed = false

func _physics_process(delta):
	if haveseed == false:
		if Global.numofrandomseed == 1:
			var random = preload("res://random_seedpack.tscn").instance()
			add_child(random)
			haveseed = true

	if Global.numofrandomseed == 0:
		haveseed = false
	

		

