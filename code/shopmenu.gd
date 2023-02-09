extends StaticBody2D

var item = 1

var carrotprice = 4
var onionprice =4
var berryprice = 6
var randomprice = 2

var berryowned = Global.numofberryseed
var item2owned = false
var price 

func _ready():
	$seedpack.play("carrotseed")
	item = 1
	$buy.color = "ff0000" #red
	
func _physics_process(delta):
	if self.visible == true:
		if item == 1:
			$seedpack.play("carrotseed")
			$price.text = (""+ str(carrotprice))
			if Global.coin >= carrotprice:
				$buy.color = "00ff28" #green
			else:
				$buy.color = "ff0000" #red

		if item == 2:
			$seedpack.play("onionseed")
			$price.text = (""+ str(onionprice))
			if Global.coin >= onionprice:
				$buy.color = "00ff28" #green
			else:
				$buy.color = "ff0000" #red

		if item == 3:
			$seedpack.play("berryseed")
			$price.text = (""+ str(berryprice))
			if Global.coin >= berryprice:
				$buy.color = "00ff28" #green
			else:
				$buy.color = "ff0000" #red

		if item == 4:
			$seedpack.play("randomseed")
			$price.text = (""+ str(randomprice))
			if Global.coin >= randomprice:
				$buy.color = "00ff28" #green
			else:
				$buy.color = "ff0000" #red


		
	
func _on_buttonleft_pressed():
	swap_item_back()


func _on_buttonright_pressed():
	swap_item_forward()


func _on_buybutton_pressed():
	if item == 1:
		price = carrotprice
		if Global.coin >= price:
			buy()


	elif item == 2:
		price = onionprice
		if Global.coin >= price:
			buy()

	elif item == 3:
		price = berryprice
		if Global.coin >= price:
			buy()

	elif item == 4:
		price = randomprice
		if Global.coin >= price:
			buy()





func swap_item_back():
	if item == 1:
		item = 4 #lastpage
	elif item == 2:
		item = 1
	elif item == 3:
		item = 2
	elif item == 4:
		item = 3

func swap_item_forward():
	if item == 1:
		item = 2
	elif item == 2:
		item = 3
	elif item == 3:
		item = 4
	elif item == 4:
		item = 1 

func buy():
	Global.coin -= price
	if item == 1:
		Global.numofcarrotseed += 1
	if item == 2:
		Global.numofonionseed += 1
	if item == 3:
		Global.numofberryseed += 1
	if item == 4:
		Global.numofrandomseed += 1
