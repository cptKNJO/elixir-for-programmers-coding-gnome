defmodule Dictionary.Impl.Words do
  def start() do
    word_list()
    |> random_word()
  end

  def word_list() do
    "assets/words.txt"
    |> get_words_from_file()
  end

  def random_word(word_list) do
    word_list
    |> Enum.random()
  end

  defp get_words_from_file(filename) do
    filename
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end
end
