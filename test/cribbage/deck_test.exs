defmodule Cribbage.DeckTest do
  use ExUnit.Case
  doctest Cribbage.Deck

  test "has 52 cards" do
    deck = %Cribbage.Deck{}
    assert length(deck.cards) == 52
  end
end
