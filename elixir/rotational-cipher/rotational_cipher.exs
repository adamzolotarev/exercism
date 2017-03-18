defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    # alpahbet_shift = rem(char + alphabet_shift, (97 - 65))

    text
    |> to_charlist
    |> Enum.map(&rotate_char(&1, shift))
    |> List.to_string
  end

  defp rotate_char(char, shift) do
    cond do
      is_upper_case_letter(char) -> rotate_upper_letter(char, shift)
      is_lower_case_letter(char) -> rotate_lower_letter(char, shift)
      true -> char
    end
  end

  defp is_upper_case_letter(char) do
    char >= 65 && char <= 90
  end

  defp is_lower_case_letter(char) do
    char >= 97 && char <= 122
  end

  defp rotate_upper_letter(char, shift) do
    alphabet_shift = rem(shift, 26)
    capital_a_code = 65
    capital_a_code + rem(char - capital_a_code + alphabet_shift, 26)
  end

  defp rotate_lower_letter(char, shift) do
    alphabet_shift = rem(shift, 26)
    lower_a_code = 97
    lower_a_code + rem(char - lower_a_code + alphabet_shift, 26)
  end

end
