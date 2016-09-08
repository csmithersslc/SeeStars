defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "Your escape velocity of Earth is correct" do
    ev = Physics.Rocketry.escape_velocity :earth
  end

  test "Your escape velocity of your planet is correct" do
  	%{mass: 4.0e22, radius: 6.21e6}
  		|> Physics.Rocketry.escape_velocity
  end
end
