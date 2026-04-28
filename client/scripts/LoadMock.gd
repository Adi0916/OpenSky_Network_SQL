extends Node

@export var mock_data: String
@export var data: Array[Data]

func _ready() -> void:
	load_data()

func load_data() -> void:
	var csv := FileAccess.open(mock_data, FileAccess.READ)
	print(csv.get_csv_line())
	while !csv.eof_reached():
		var x := csv.get_csv_line()
		if len(x) == 1: return
		var d := Data.new()
		print(x)
		d.amplitude = float(x[13])
		d.latitude = float(x[2])
		d.langnitude = float(x[3])
		d.plane_name = x[7]
		d.velocity = float(x[4])
		data.append(d)
