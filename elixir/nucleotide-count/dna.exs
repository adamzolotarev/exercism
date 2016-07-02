defmodule DNA do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> DNA.count('AATAA', ?A)
  4

  iex> DNA.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer

  def count(strand, nucleotide) do
    validNucleotides? = Enum.all?([nucleotide | strand], &isNucleotide?/1)
    case validNucleotides? do
      true -> _count(strand, nucleotide)
      false ->  raise ArgumentError
    end
  end

  defp _count(strand, nucleotide) do
    strand    
    |> Enum.filter(fn(l) -> l == nucleotide end)
    |> length
  end

  defp validNucleotides, do: [?A, ?G, ?T, ?C]
  defp isNucleotide?(candidate), do: Enum.member?(validNucleotides, candidate)

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> DNA.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    %{?A => count(strand, ?A), ?T => count(strand, ?T), ?C => count(strand, ?C), ?G => count(strand, ?G)}
  end  
end
