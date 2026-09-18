extends Node3D

@export var smoker: PackedScene
@export var estrelinhas: PackedScene
@export var estrelinhas_2: PackedScene
@export var option_button: OptionButton

var parti_atual: PackedScene

func _ready() -> void:
	parti_atual = estrelinhas
	print(parti_atual)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("mouse_esq"):
		var particula = parti_atual.instantiate()
		
		add_child(particula)
		particula.restart()

func _on_option_button_item_selected(index: int) -> void:
	match index:
		0:#por gabriel A. Arboitte
			parti_atual = smoker
		1:
			parti_atual = estrelinhas
		2:
			parti_atual= estrelinhas_2
