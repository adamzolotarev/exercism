defmodule RotationalCipher do

  @upper_case ?A..?Z
  @lower_case ?a..?z

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |> to_charlist
    |> Enum.map(&rotate_char(&1, shift))
    |> List.to_string
  end

  defp rotate_char(char, shift) do
    rotate = fn (start, char) -> start + rem(char - start + shift, 26) end

    cond do
      char in @upper_case -> rotate.(?A, char)
      char in @lower_case -> rotate.(?a, char)
      true -> char
    end
  end

end
