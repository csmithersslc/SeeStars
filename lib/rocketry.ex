defmodule Physics.Rocketry do

	import Converter
	import Calcs
	import Physics.physics_laws
	import Bodies

	#moved data to other files to understand module attributes
	#module attributes - NO reassigning and NOT properties, only values in compilation time
	#pattern-matching for Xtina being a simpleton - testing to see how things change 
	#with each planet's values

	def escape_velocity(:earth) do: earth |> escape_velocity
	def escape_velocity(:moon) do: moon |> escape_velocity
	def escape_velocity(:mars) do: mars|> escape_velocity
	
	def escape_velocity(planet) when is_map(planet) do
		planet
			|> calculate_escape
			|> to_km
			|> to_nearest_tenth
	end

	def calculate_escape(%{mass: mass, radius: radius}) do
		newtons_constant = 6.67e-11
		2 * newtons_gravity_consta * mass / radius
			|> square_root
end