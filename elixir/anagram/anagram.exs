defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]

  def match(_, []), do: []
  def match(base, words) do
    base = String.downcase(base)
    Enum.filter(words, fn(word) ->
      isAnagram?(normalize(base), normalize(word)) end)
  end

  defp normalize(word) do
    word |> String.downcase |> String.graphemes
  end

  def isAnagram?(a, a), do: false
  def isAnagram?(a, b), do: _isAnagram?(a, b)

  defp _isAnagram?([], []), do: true
  defp _isAnagram?(base = [h|t], word) do
    cond do
      length(base) != length(word) -> false
      Enum.member?(word, h) -> _isAnagram?(t, wordWithoutLetter(word, h))
      true -> false
    end
  end

  defp wordWithoutLetter(word, letter) do
    List.delete(word, letter)
  end
end
