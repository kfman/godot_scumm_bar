extends KinematicBody2D

var destination = Vector2()
var distance = Vector2()
var velocity = Vector2()

export var speed = 20

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	destination = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (position != destination):
		distance = Vector2(destination - position)
		velocity.x = distance.normalized().x * speed
		velocity.y = distance.normalized().y * speed
		move_and_slide(velocity)
	pass


func _input(event):
	if Input.is_mouse_button_pressed(1):
		destination = get_global_mouse_position()
