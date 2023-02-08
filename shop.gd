extends StaticBody2D



func _ready():
	$shopmenu.visible = false





	

func _on_Area2D_body_entered(body):
	if body.has_method("player_shop_method"):
		$shopmenu.visible = true 
		
		if body.has_method("player_sell_method"):
			var carrot = Global.numofcarrot
			var onion = Global.numofonion
			var berry = Global.numofberry
		
			
			var coin = Global.coin
			
			coin += carrot * 5
			coin += onion * 5
			coin += berry * 7
			
			
			
			
			
			carrot = 0
			onion = 0
			berry =0
			
			Global.coin = coin
			Global.numofcarrot = carrot
			Global.numofonion = onion
			Global.numofberry = berry
		

		


func _on_Area2D_body_exited(body):
	$shopmenu.visible = false 
