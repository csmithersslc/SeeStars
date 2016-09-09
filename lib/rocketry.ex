defmodule Physics.Rocketry do

	import Converter
	import Calcs
	import Physics.physics_laws
	import Bodies

	#moved data to other files to understand module attributes
	#module attributes - NO reassigning and NOT properties, only values in compilation time
	#pattern-matching for Xtina being a simpleton - testing to see how things change 
	#with each planet's values
	#also note that we are sticking with metric overall since it makes sense

	def escape_velocity(:earth) do: earth |> escape_velocity
	def escape_velocity(:moon) do: moon |> escape_velocity
	def escape_velocity(:mars) do: mars|> escape_velocity
	
	def escape_velocity(planet) when is_map(planet) do
		planet
			|> calculate_escape
			|> to_km
			|> to_nearest_tenth
	end
	
	def orbital_speed(height) do
		newtons_gravity_constant * earth.mass / orbital_radius(heights)
			|> square_root	
	end

	def orbital_acceleration(height) do
		orbital_speed(height) |> squared / orbital_radius(height)
	end

	def orbital_term(height) do
		4 * (:math.pi |> squared) * (orbital_radius(height) |> cubed) / (newtons_gravity_constant * earth.mass)
			|> square_root
			|> seconds_to_hours
	end
	
	#general orbital calculation, not just Earth
	defp orbital_radius(height) do
		earth.radius + (height |> to_meters)
	end


	#TODO : regression fixing 
	def calculate_escape(%{mass: mass, radius: radius}) do
		2 * newtons_gravity_constant * mass / radius
			|> square_root
end