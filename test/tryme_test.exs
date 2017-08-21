defmodule TrymeTest do
  use ExUnit.Case
  doctest Tryme

  test "greets the world" do
    assert Tryme.hello() == :world
  end
end
