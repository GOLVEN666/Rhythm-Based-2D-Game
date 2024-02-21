extends Node

var enemy_scene = preload("res://Enemyy.tscn")
var enemy_scene2 = preload("res://Enemy.tscn")
var enemy_scene3 = preload("res://Enemyy+.tscn")
var enemy_scene4 = preload("res://Enemyy++.tscn")


var note_list_left = [1]
var note_list_right = [4]
var note_list_top = [3]
var note_list_bottom = [10,12]


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
