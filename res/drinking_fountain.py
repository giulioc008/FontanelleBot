import math


class DrinkingFountain:
	def __init__(self, identifier: int, latitude: float, longitude: float, altitude: float):
		self.__identifier = identifier
		self.__latitude = latitude
		self.__longitude = longitude
		self.__altitude = altitude

	def __str__(self) -> str:
		return "ID: {}\n\tLatitude: {}\n\tLongitude: {}\n\tAltitude: {}".format(self.__identifier, self.__latitude, self.__longitude, self.__altitude)

	@property
	def altitude(self) -> float:
		return self.__altitude

	def distance(self, latitude: float, longitude: float, altitude: float) -> float:
		return math.sqrt(math.pow(self.__latitude - latitude, 2) + math.pow(self.__longitude - longitude, 2) + math.pow(self.__altitude - altitude, 2))

	@property
	def identifier(self) -> float:
		return self.__identifier

	@property
	def latitude(self) -> float:
		return self.__latitude

	@property
	def longitude(self) -> float:
		return self.__longitude
