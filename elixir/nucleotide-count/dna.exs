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
    unless Enum.all?([nucleotide | strand], &isNucleotide?/1), do: raise ArgumentError
    Enum.count(strand, &(&1 == nucleotide)) 
  end
  
  defp isNucleotide?(candidate), do: Enum.member?(@nucleotides, candidate)

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> DNA.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    Map.new(@nucleotides, &({&1, count(strand, &1)}))    
  end  
end
