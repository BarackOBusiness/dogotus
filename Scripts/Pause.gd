extends ColorRect

onready var animator := $AnimationPlayer
onready var resume_button := find_node("ResumeButton")
onready var quit_button := find_node("QuitButton")

func _ready() -> void:
	resume_button.connect("pressed", self, "unpause")
	quit_button.connect("pressed", get_tree(), "quit")

func pause():
	animator.play("Pause")
	get_tree().paused = false
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
func unpause():
	animator.play("Unpause")
	get_tree().paused = false
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
