defmodule Bodies do

	#moon's mass is 7.35e22kg, radius is 1.738e6m
	#mars's mass is 6.39e23kg, radius is 3.4e6m
	def moon , do: %{mass: 7.35e22, radius: 1.738e6}
	def mars, do:  %{mass: 6.39e23, radius: 3.4e6}
	def earth, do: %{mass: 5.972e24, radius: 6.371e6}
end