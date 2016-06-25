defmodule BracketPush do
  @doc """
  Checks that all the brackets and braces in the string are matched correctly, and nested correctly
  """
  @spec check_brackets(String.t) :: boolean

  def check_brackets(""), do: true
  def check_brackets(brackets) do
    _check_brackets([],  brackets |> String.graphemes)
  end

  defp _check_brackets([], []), do: true
  defp _check_brackets([], [h|t]) do
    case bracket?(h) do
      true -> _check_brackets([h], t)
      false -> _check_brackets([], t)
    end
  end
  defp _check_brackets(stack = [sh|st], [h|t]) do
    cond do
        openBracket?(h) -> _check_brackets([h | stack], t)
        matchingClosingBracket?(h, sh)  -> _check_brackets(st, t)
        closeBracket?(h) -> _check_brackets([h | stack], t)
        true -> _check_brackets(stack, t)
      end
  end
  defp _check_brackets(_, []), do: false

  defp bracket?(c) do
    Regex.match?(~r/[\{\[\(\)\]\}]/, c)
  end

  defp openBracket?(c), do: Regex.match?(~r/[\{\[\(]/, c)
  defp closeBracket?(c), do: Regex.match?(~r/[\)\]\}]/, c)

  defp isMatch?("}","{"), do: true
  defp isMatch?(")","("), do: true
  defp isMatch?("]","["), do: true
  defp isMatch?(_, _), do: false

  defp matchingClosingBracket?(bracket, openBracketToMatch) do
    closeBracket?(bracket) && isMatch?(bracket, openBracketToMatch)
  end

end
