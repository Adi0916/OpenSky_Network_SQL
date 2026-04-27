extends StaticBody3D
class_name FlightData

@export var flight_data: Data

func retrive_data() -> Data:
	print(flight_data.latitude, "|", flight_data.langnitude)
	return flight_data
