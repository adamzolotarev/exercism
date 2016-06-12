defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(string) :: String.t()
  def abbreviate(string) do
    string
    |> String.split
    |> Enum.map(fn(x) -> capitalizeFirstLetter(x) end)
    |> Enum.join
    |> String.graphemes
    |> Enum.filter(fn(x) -> String.match?(x, ~r/^\p{Lu}$/u) end)
    |> Enum.join
  end

  defp capitalizeFirstLetter(word) do
    firstLetter = word
      |> String.slice(0, 1)
      |> String.capitalize()
    firstLetter <> String.slice(word, 1..-1)
  end

end
