defmodule Dictionary do
  alias Dictionary.Impl.Words

  defdelegate start, to: Words, as: :word_list

  defdelegate random_word(word_list), to: Words
end
