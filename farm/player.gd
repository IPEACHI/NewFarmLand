extends KinematicBody2D

var speed = 50
var motion = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2.play("sidewalk")
		$AnimatedSprite2.flip_h = true
		motion.x = speed
		motion.y = 0
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite2.play("sidewalk")
		$AnimatedSprite2.flip_h = false
		motion.x = -speed
		motion.y = 0
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite2.play("downwalk")
		motion.y = speed
		motion.x = 0
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite2.play("upwalk")
		motion.y = -speed
		motion.x = 0
	else:
		$AnimatedSprite2.play("idle")
		motion.x = 0
		motion.y = 0
	
	move_and_slide(motion)

func player_sell_method():
	pass
func player_shop_method():
	pass
	
	
	
	
	
	
	
	
var carrot = Global.numofcarrot
var onion = Global.numofonion
var berry = Global.numofberry


var carrotseed = Global.numofcarrotseed
var onionseed = Global.numofonionseed
var berryseed = Global.numofberryseed
var randomseed = Global.numofrandomseed

		
var coinsave = Global.coin

		

func get_save_stats():
	return {
			'filename' : get_filename(),
			'parent' : get_parent().get_path(),

			'farm': {
				'carrot' : carrot,
				'onion' : onion,
				'berry' : berry,
				'carrotseed' : carrotseed,
				'onionseed' : onionseed,
				'berryseed' : berryseed,
				'randomseed' : randomseed,
				'coin' : coinsave
					}
			}

func load_save_stats(farm):
			
	Global.numofcarrot = farm.farm.carrot
	Global.numofonion = farm.farm.onion
	Global.numofberry = farm.farm.berry


	Global.numofcarrotseed = farm.farm.carrotseed
	Global.numofonionseed = farm.farm.onionseed
	Global.numofberryseed = farm.farm.berryseed
	Global.numofrandomseed =farm.farm.randomseed


	Global.coin = farm.farm.coin



	
	
