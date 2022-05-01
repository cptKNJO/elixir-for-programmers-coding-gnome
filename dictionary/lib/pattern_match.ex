defmodule Pattern do
  @doc """
  function that takes a two-element tuple as a parameter, and
  uses pattern matching to return a two element tuple with the values
  swapped (so pass it `{2,5}`  and you'll get `{5,2}` back).
  """
  def swapper({a, b}), do: {b, a}

  @doc """
  function that takes two parameters.
  It should return true if the parameters are the same,
  false otherwise. You aren't allowed to use any conditional logic,
  so you'll have to rely on pattern matching.
  """
  def samenessChecker(a, a), do: true
  def samenessChecker(a, b), do: false
end
