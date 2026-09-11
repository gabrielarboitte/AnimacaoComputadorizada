extends Path3D

@export var path_follow_3d: PathFollow3D

@export var h_slider: HSlider

var dir := 1.0

func _process(delta: float) -> void:
	path_follow_3d.progress_ratio += (h_slider.value * 0.001) * dir
	
	if path_follow_3d.progress_ratio == 0 or path_follow_3d.progress_ratio == 1: 
		dir *= -1


# Usei valores de 1 a 100 no range do Horizontal Slider para poder usar numeros rounded de forma conveniente
# mas multiplico por 0.001 para ter uma porcentagem de progressão da curva do Path3D mais lenta e fácil de visualizar

# se o path follow chegar ao fim (1.0) inverte a var direção, assim seguindo o Path3D ao contrario.
# meu objetivo foi criar uma movimentação simples de pêndulo
