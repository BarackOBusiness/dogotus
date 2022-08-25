extends ColorRect

@onready var animator := $AnimationPlayer
@onready var resume_button := $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/ResumeButton
@onready var settings_buttin := $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/SettingsButton
@onready var quit_button := $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/QuitButton

func _ready() -> void:
	resume_button.pressed.connect(unpause)
	quit_button.pressed.connect(get_tree().quit)

func pause():
	animator.play("Pause")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func unpause():
	animator.play("Unpause")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
