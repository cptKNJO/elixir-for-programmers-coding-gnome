defmodule Dictionary.Runtime.Server do
  @type t :: pid()

  @me __MODULE__
  alias Dictionary.Impl.Words

  use Agent

  def start_link(_) do
    Agent.start_link(&Words.word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me, &Words.random_word/1)
  end
end
