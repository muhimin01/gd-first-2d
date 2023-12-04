extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names() # Get the list of animation names from the AnimatedSprite2D's sprite_frames property.
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()]) # Pick a random number between 0 and 2 to select one of the animation types

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Make the mobs delete themselves when they leave the screen
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
