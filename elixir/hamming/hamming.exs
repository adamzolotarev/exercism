defmodule DNA do
  @doc """
  Returns number of differences between two strands of DNA, known as the Hamming Distance.

  ## Examples

  iex> DNA.hamming_distance('AAGTCATA', 'TAGCGATC')
  {:ok, 4}
  """
  @spec hamming_distance([char], [char]) :: non_neg_integer
  def hamming_distance(strand1, strand2) do
  	case length(strand1) == length(strand2) do
  		false -> {:error, "Lists must be the same length."}
  		true -> count = {:ok, _hamming_distance(strand1, strand2, 0)}
  	end
  end

  defp _hamming_distance(h, h, acc), do: acc
  defp _hamming_distance([h|t1], [h|t2], acc), do: _hamming_distance(t1, t2, acc)
  defp _hamming_distance([_|t], [_|t2], acc), do: _hamming_distance(t, t2, acc + 1) 
end
