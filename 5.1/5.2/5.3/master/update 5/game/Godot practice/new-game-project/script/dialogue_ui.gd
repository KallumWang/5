extends Control

@onready var dialogue_line: RichTextLabel = %DialogueLine
@onready var speaker_label: Label = %SpeakerLabel
@onready var next_button: Area2D = $NextButton

signal next_pressed

func _ready():
	if next_button == null:
		push_error(" NextButton not found!")
	else:
		next_button.connect("input_event", Callable(self, "_on_next_button_input"))

func _on_next_button_input(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("Triangle button clicked")
		emit_signal("next_pressed")
