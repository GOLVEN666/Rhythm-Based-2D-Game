extends Node

var enemy_scene = preload("res://Scenes/Enemy.tscn")
var enemy_scene2 = preload("res://Scenes/Enemy.tscn")
var enemy_scene3 = preload("res://Scenes/Enemyy+.tscn")
var enemy_scene4 = preload("res://Scenes/Enemyy++.tscn")


var note_list_left = [1]
var note_list_right = [2]
var note_list_top = []
var note_list_bottom = []


func _on_conductor_beat(position):
	for i in note_list_left:
		if position == i:
			var enemy = enemy_scene.instantiate()
			enemy.position = Vector2(-50,320)
			add_child(enemy)
	for i in note_list_right:
		if position == i:
			var enemy2 = enemy_scene2.instantiate()
			enemy2.position = Vector2(1202, 320)
			add_child(enemy2)
	for i in note_list_top:
		if position == i:
			var enemy3 = enemy_scene3.instantiate()
			enemy3.position = Vector2(576, -306)
			add_child(enemy3)
	for i in note_list_bottom:
		if position == i:
			var enemy4 = enemy_scene4.instantiate()
			enemy4.position = Vector2(576, 946)
			add_child(enemy4)
