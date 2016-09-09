# Physics

**This is a study in Elixir to do rocketry calculations.  To see where the physics for rocketry calculations come from, please view https://en.wikipedia.org/wiki/Escape_velocity.  You can see the orbital calculations information here: http://www.pas.rochester.edu/~blackman/ast104/newtongrav.html**

## Installation

First, you need to install Elixir if you do not have it already.  The instructions for all Operating Systems can be found here: http://elixir-lang.org/install.html

Next, you will need Hex.  If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `physics` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:physics, "~> 0.1.0"}]
    end
    ```

  2. Ensure `physics` is started before your application:

    ```elixir
    def application do
      [applications: [:physics]]
    end
    ```

