defmodule CribbageTest do
  use ExUnit.Case
  doctest Cribbage

  test "greets the world" do
    assert Cribbage.hello() == :world
  end
end
