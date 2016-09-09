defmodule BodiesTest do
	use ExUnit.Case

	setup do
	    bodies = [
	       %{name: "Earth", type: :rocky, ev: 11.2},
	       %{name: "Mars", type: :rocky, ev: 5.0}
    	]
    	{:ok, bodies: bodies}
  	end

	test "Your escape velocity of Earth is correct" do
	    ev = Bodies.Rocketry.escape_velocity |> IO.inspect
	    assert == 11.2
  	end

end