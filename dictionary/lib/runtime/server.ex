defmodule Dictionary.Runtime.Server do
  @type t :: pid()

  @me __MODULE__
  alias Dictionary.Impl.Words

  @spec start_link() :: {:ok, t}
  def start_link() do
    Agent.start_link(&Words.word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me, &Words.random_word/1)
  end
end
