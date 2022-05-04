defmodule Hangman do
  alias Hangman.Impl.Game
  alias Hangman.Types

  @opaque game :: Game.t()

  @spec new_game() :: game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t()) :: {game, Types.tally()}
  def make_move(_game, _guess) do
  end
end
