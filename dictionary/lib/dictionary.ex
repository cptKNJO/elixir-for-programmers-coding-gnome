defmodule Dictionary do
  alias Dictionary.Impl.Words

  defdelegate start, to: Words

  defdelegate random_word(word_list), to: Words
end
