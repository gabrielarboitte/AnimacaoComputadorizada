extends HSlider
@export var label: Label

func _process(delta: float) -> void:
	label.text = "Taxa de progress_ratio do PathFollow3D na curva 3D Bézier: " + str(value * 0.001)
