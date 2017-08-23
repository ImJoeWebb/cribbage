defmodule Cribbage.Deck do
  @suits ~w(clubs diamonds hearts spades)a
  @ranks ~w(ace two three four five six seven eight nine ten jack queen king)a
  @standard_deck Enum.flat_map(@suits, fn(suit)->
    for rank <- @ranks do
      {rank, suit}
    end
  end)

  defstruct [cards: @standard_deck]

  @moduledoc """
  The top of the deck corresponds to the first element of the list.
  """

  @doc """
  Shuffles the deck randomly.
  """
  def shuffle(deck = %__MODULE__{}) do
    %{deck | cards: Enum.shuffle(deck.cards)}
  end
end
