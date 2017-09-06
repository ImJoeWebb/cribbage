defmodule Cribbage do
  alias Cribbage.GameState

  @moduledoc """
  This is the top-level module, for issuing commands.
  """

  def initialize_game, do: %GameState{}
end
