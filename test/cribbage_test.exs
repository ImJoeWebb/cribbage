defmodule CribbageTest do
  use ExUnit.Case
  alias Cribbage.{Deck, GameState}
  doctest Cribbage

  test "initialize_game" do
    new_game = Cribbage.initialize_game

    # returns game state
    assert %GameState{} = new_game
    # with no players
    assert new_game.players == []
    # and standard unshuffled deck
    assert new_game.deck == %Deck{}
  end
end
