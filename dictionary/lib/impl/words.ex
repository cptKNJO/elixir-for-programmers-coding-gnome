defmodule Dictionary.Impl.Words do
  @type t :: list(String.t())

  @spec word_list() :: t
  def word_list() do
    "assets/words.txt"
    |> get_words_from_file()
  end

  @spec random_word(t) :: String.t()
  def random_word(word_list) do
    word_list
    |> Enum.random()
  end

  @spec get_words_from_file(String.t()) :: t
  defp get_words_from_file(filename) do
    filename
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end
end
