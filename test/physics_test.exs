defmodule PhysicsTest do
  use ExUnit.Case
  import Physics.Rocketry

  test "Your escape velocity of Earth is correct" do
    ev = Physics.Rocketry.escape_velocity (:earth) |> IO.inspect
    assert == 11.2
  end

  test "Your escape velocity of this other planet is correct" do
  	%{mass: 4.0e22, radius: 6.21e6}
  		|> Physics.Rocketry.escape_velocity |> IO.inspect
  		assert ev == 1.0
  end

  test "Orbital acceleration defaults to Earth" do
    x = orbital_acceleration(100)
    assert x == 9.515619587729839
  end

#using metric since it makes more sense
  test "Orbital acceleration for earth at 100km" do
    orbital_acc = orbital_acceleration(100)
    assert orbital_acc == 9.515619587729839
  end

  # Brb in 3, getting Avatar's from Mill Valley, k thx bai
  #test "Light seconds testing..." do
  # 	{:miles, 2000} |> Converter.to_light_seconds
  # end
end
