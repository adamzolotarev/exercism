defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """

  def compare(a, a), do: :equal
  def compare(l, l2) do
    cond do
      _compare(l, l2) == :sublist -> :sublist
      _compare(l2, l) == :sublist -> :superlist
      true -> :unequal
    end
  end

  defp _compare([], []), do: :sublist
  defp _compare([], [nil]), do: :sublist
  defp _compare(a, a), do: :sublist
  defp _compare(_, []), do: :unequal
  defp _compare(l, l2 = [h|t]) do
    if (atTheHeadOf?(l, l2)) do
      :sublist
    else
      _compare(l, t)
    end
  end

  defp atTheHeadOf?([], _), do: true
  defp atTheHeadOf?([h|t], [h|t2]) do
    atTheHeadOf?(t, t2)
  end
  defp atTheHeadOf?(_,_), do:  false
end
