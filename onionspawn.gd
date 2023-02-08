extends StaticBody2D

var haveseed = false

func _physics_process(delta):
	if haveseed == false:
		if Global.numofonionseed == 1:
			var onionseed = preload("res://onion_seedpack.tscn").instance()
			add_child(onionseed)
			haveseed = true


	if Global.numofonionseed == 0:
		haveseed = false
		
