defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(l) do
    countIt({0, l})
  end

  defp countIt({n,[]}), do: n
  defp countIt({n,[h|t]}), do: countIt({n + 1, t})

  @spec reverse(list) :: list
  def reverse(l) do
    reverseIt({l, []})
  end

  defp reverseIt({[], l}), do: l
  defp reverseIt({[h|t], l}), do: reverseIt({t, [h|l]})

  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    mapIt(l, [], f)
    |> reverse
  end

  defp mapIt([], l, f), do: l
  defp mapIt([h|t], l2, f), do: mapIt(t, [f.(h)|l2], f)


  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    filterIt(l, [], f)
    |> reverse
  end

  defp filterIt([], l, f), do: l
  defp filterIt([h|t], l, f) do
    case f.(h) do
      true -> filterIt(t, [h|l], f)
      false -> filterIt(t, l, f)
    end
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do

  end

  @spec append(list, list) :: list
  def append(a, b) do

  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do

  end
end
