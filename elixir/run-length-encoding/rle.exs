defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(string) do
    string
    |> String.graphemes
    |> Enum.reduce([], fn
        (letter, [{letter, n} | acc]) ->[{letter, n + 1} | acc]
        (letter, acc) -> [{letter, 1} | acc]
      end)
    |> Enum.reverse
    |> Enum.map(fn {k, v} -> "#{v}#{k}" end)
    |> Enum.join
  end

  @spec decode(String.t) :: String.t
  def decode(string) do

  end
end
