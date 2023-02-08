extends Node2D





func _on_start_pressed():
	get_tree().change_scene("res://world.tscn")
	



func _on_quit_pressed():
	get_tree().quit()


func _on_credit_pressed():
	get_tree().change_scene("res://Credit.tscn")
	
	
	
