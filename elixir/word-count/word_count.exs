defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
      sentence
        |> clean_input
        |> String.split
        |> count_words
  end

  def count_words(words) when is_list(words) do
    Enum.reduce(words, %{}, &update_count/2)    
  end

  defp clean_input(input) do
    input
      |> String.replace(~r/[.,\/#!$%\^&@\*;:{}=\`~()]/, "")
      |> String.replace("_", " ")
      |> String.downcase
  end

  defp update_count(word, acc) do
    Map.update acc, word, 1, &(&1 + 1)
  end
end
