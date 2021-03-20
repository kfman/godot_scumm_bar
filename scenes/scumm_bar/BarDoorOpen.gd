extends Node2D

# onready var shape :CollisionPolygon2D = $Shape
onready var barDoor = $BarDoorOpen

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(_event):
	pass

func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton && event.pressed:
		print('Clicked inside')
		barDoor.visible = !barDoor.visible
	 # Replace with function body.


func _on_Area2D_mouse_entered():
	barDoor.visible = !barDoor.visible
	pass # Replace with function body.
