defmodule Physics.Planet do
	defstruct [
		name: "Earth",
		#using metric meters and kg for radius and mass
		radius_m: 6.371e6,
		mass_kg: 5.97e24
	]
end

def escape_velocity(planet) do
	#using the gravity constant determined by Newton
	gmr = 2 * g  * planet.mass_kg / planet.radius_m
	#now doing velocity in metric and imperial units
	vms = :math.sqrt(gmr)
	vkms / 1000
	Float.ceil vkms, 1	
end

#now we create a struct and pass values (using earth though it can be changed to mars in the args)
v = %Physics.Planet{} |> Physics.Planet.escape_velocity

defmodule Physics.Rocketry do
	
end