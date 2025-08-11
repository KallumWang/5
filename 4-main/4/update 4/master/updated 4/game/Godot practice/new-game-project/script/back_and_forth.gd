extends PathFollow2D

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress_ratio += .005 * direction
	if progress_ratio == 1:
		direction = -1
	if progress_ratio == 0:
		direction = 1
