defmodule ProteinTranslation do

  @rna_to_protein [
    UGU: "Cysteine",
    UGC: "Cysteine",
    UUA: "Leucine",
    UUG: "Leucine",
    AUG: "Methionine",
    UUU: "Phenylalanine",
    UUC: "Phenylalanine",
    UCU: "Serine",
    UCC: "Serine",
    UCA: "Serine",
    UCG: "Serine",
    UGG: "Tryptophan",
    UAU: "Tyrosine",
    UAC: "Tyrosine",
    UAA: "STOP",
    UAG: "STOP",
    UGA: "STOP"
  ]

  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: { atom,  list(String.t()) }
  def of_rna(rna) do
    result =
    rna
    |> String.codepoints
    |> Enum.chunk(3, 3)
    |> Enum.reduce([], fn(el, acc) -> acc ++  [@rna_to_protein[String.to_atom(to_string(el))]] end )
    |> until_stop
    |> validate

    {:ok, result}
  end

  defp validate(rna_candidates) do

  end

  defp validate([h|t], []) do
    @rna_to_protein[String.to_atom(h)]
  do

  defp until_stop(acc) do
    until_stop(acc, [])
  end

  defp until_stop([], acc) do
    acc
  end

  defp until_stop(["STOP"|_t], acc) do
    acc
  end

  defp until_stop([h|t], acc) do
    [h|acc] ++ until_stop(t)
  end

  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """
  @spec of_codon(String.t()) :: { atom, String.t() }
  def of_codon(codon) do
    protein = @rna_to_protein[String.to_atom(codon)]

    {:ok, protein}
  end
end
