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

  defp isAnagram?(a, a), do: false
  defp isAnagram?(base = [h|t], word) do
    cond do
      length(base) != length(word) -> false
      base -- word == [] -> true
      true -> false
    end
  end

end
