defmodule Bob do
  def hey(input) do
    cond do
      sayNothing(input) -> "Fine. Be that way!"
      isQuestion(input) -> "Sure."
      isShouting(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp isShouting(input) do
    isUpperCase =
          input
            |> String.upcase
            |> (String.equivalent? input)

    isUpperCase && (anyLetters? input)
  end

  defp isQuestion(input) do
    input
      |> (String.ends_with? "?")
  end

  defp sayNothing(input) do
    input
      |> String.strip
      |> (String.equivalent? "")
  end

  defp anyLetters?(input) do
    Regex.match?(~r/\p{L}+/, input)
  end
end
