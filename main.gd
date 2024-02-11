extends Node

var enemy_scene = preload("res://Enemyy.tscn")
var enemy_scene2 = preload("res://Enemy.tscn")
var enemy_scene3 = preload("res://Enemyy+.tscn")
var enemy_scene4 = preload("res://Enemyy++.tscn")

func _on_timer_timeout():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(-100,341)
	add_child(enemy)
	var enemy2 = enemy_scene2.instantiate()
	enemy2.position = Vector2(800, 341)
	add_child(enemy2)
	var enemy3 = enemy_scene3.instantiate()
	enemy3.position = Vector2(600, -10)
	add_child(enemy3)
	var enemy4 = enemy_scene4.instantiate()
	enemy4.position = Vector2(600, 800)
	add_child(enemy4)
