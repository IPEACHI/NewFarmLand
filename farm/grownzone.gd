extends StaticBody2D

var plant = Global.plantselected
var plantgrowing = false 
var plant_grown = false
var rng = RandomNumberGenerator.new()
var random
func _physics_process(delta):
	if plantgrowing == false:
		plant = Global.plantselected
	



func _on_Area2D_area_entered(area):
	if plant == 4:
		
		random = rng.randi_range(1,7)
		plant = random
		print(""+str(random))
		rand()
		Global.numofrandomseed -=1
		
	if not plantgrowing:
		if plant == 1:
			plantgrowing = true
			$carrotgrowntimer.start()
			$plant.play("carrotgrowing")
			Global.numofcarrotseed -=1
		if plant == 2:
			plantgrowing = true
			$oniongrowntimer.start()
			$plant.play("oniongrowing")
			Global.numofonionseed -=1
		if plant == 3:
			plantgrowing = true
			$berrygrowntimer.start()
			$plant.play("berrygrowing")
			Global.numofberryseed -=1

	else:
		print("plant is already grown here")

func _on_carrotgrowntimer_timeout():
	var carrot_plant  = $plant
	if carrot_plant.frame == 0:
		carrot_plant.frame = 1
		$carrotgrowntimer.start()
	elif carrot_plant.frame == 1:
		carrot_plant.frame = 2
		plant_grown = true

func _on_oniongrowntimer_timeout():
	var onion_plant  = $plant
	if onion_plant.frame == 0:
		onion_plant.frame = 1
		$oniongrowntimer.start()
	elif onion_plant.frame == 1:
		onion_plant.frame = 2
		plant_grown = true

func _on_berrygrowntimer_timeout():
	var berry_plant  = $plant
	if berry_plant.frame == 0:
		berry_plant.frame = 1
		$berrygrowntimer.start()
	elif berry_plant.frame == 1:
		berry_plant.frame = 2
		plant_grown = true



func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		if plant_grown:
			if plant == 1:
				Global.numofcarrot += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("none")
			if plant == 2:
				Global.numofonion += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("none")
			if plant == 3:
				Global.numofberry += 1
				plantgrowing = false
				plant_grown = false
				$plant.play("none")
			else:
				pass
				
				
func rand():
	
	if not plantgrowing:
		if random == 1:
			plant = 1
			plantgrowing = true
			$carrotgrowntimer.start()
			$plant.play("carrotgrowing")
			Global.numofcarrotseed -=1
		if random == 2:
			plant == 2
			plantgrowing = true
			$oniongrowntimer.start()
			$plant.play("oniongrowing")
			Global.numofonionseed -=1
		if random == 3:
			plant == 3
			plantgrowing = true
			$berrygrowntimer.start()
			$plant.play("berrygrowing")
			Global.numofberryseed -=1


