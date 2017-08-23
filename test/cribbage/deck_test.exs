defmodule Cribbage.DeckTest do
  use ExUnit.Case
  doctest Cribbage.Deck

  test "has 52 cards" do
    deck = %Cribbage.Deck{}
    assert length(deck.cards) == 52
  end

  describe "shuffle" do
    test "changes the card order" do
      deck = %Cribbage.Deck{}
      shuffled_deck = Cribbage.Deck.shuffle(deck)

      assert deck != shuffled_deck
    end
  end
end
