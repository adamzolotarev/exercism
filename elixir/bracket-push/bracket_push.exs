defmodule BracketPush do
  @doc """
  Checks that all the brackets and braces in the string are matched correctly, and nested correctly
  """
  @spec check_brackets(String.t) :: boolean

  def check_brackets(""), do: true

  def check_brackets(brackets) do
    _check_brackets([], [], brackets |> String.graphemes )
  end

  defp _check_brackets([], [], []), do: true
  defp _check_brackets(openBrackets = [oh|ot], closeBrackets = [ch|ct], brackets =[h|t]) do
    cond do
      openBracket?(h) -> _check_brackets([h|openBrackets], closeBrackets, t)
      closeBracket?(h) -> _check_brackets(ot, closeBrackets, t)

    end
  end

  defp openBracket?(["{"]), do: true
  defp openBracket?('['), do: true
  defp openBracket?(_), do: false
  defp _check_brackets(_,_,_), do: false

  defp closeBracket?(["}"]), do: true
  defp closeBracket?(']'), do: true
  defp closeBracket?(_), do: false

end
