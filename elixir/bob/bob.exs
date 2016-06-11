defmodule Bob do
  def hey(input) do
    cond do
      nothing?(input) -> "Fine. Be that way!"
      question?(input) -> "Sure."
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp shouting?(input), do: upperCase?(input) && anyLetters?(input)
  defp question?(input), do: String.ends_with?(input, "?")
  defp anyLetters?(input), do: Regex.match?(~r/\p{L}+/, input)

  defp upperCase?(input) do
        input
          |> String.upcase
          |> (String.equivalent? input)
  end
  
  defp nothing?(input) do
    input
      |> String.strip
      |> (String.equivalent? "")
  end


end
