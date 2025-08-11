extends Control

@onready var dialogue_line: RichTextLabel = %DialogueLine
@onready var speaker_label: Label = %SpeakerLabel
@onready var next_button: Area2D = $NextButton  # ✅ Fix this line

signal next_pressed  # Will emit to main VN scene

func _ready():
	if next_button == null:
		push_error("❌ NextButton not found!")
	else:
		next_button.connect("next_pressed", Callable(self, "_on_next_button_pressed"))

func _on_next_button_pressed():
	print("▶️ Emitting next_pressed from DialogueUI")
	emit_signal("next_pressed")
