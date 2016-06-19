defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(l) do
    _count({0, l})
  end

  defp _count({n,[]}), do: n
  defp _count({n,[_|t]}), do: _count({n + 1, t})

  @spec reverse(list) :: list
  def reverse(l) do
    _reverse({l, []})
  end

  defp _reverse({[], l}), do: l
  defp _reverse({[h|t], l}), do: _reverse({t, [h|l]})

  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    _map(l, [], f)
    |> reverse
  end

  defp _map([], l, _), do: l
  defp _map([h|t], l2, f), do: _map(t, [f.(h)|l2], f)


  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    _filter(l, [], f)
    |> reverse
  end

  defp _filter([], l, _), do: l
  defp _filter([h|t], l, f) do
    case f.(h) do
      true -> _filter(t, [h|l], f)
      false -> _filter(t, l, f)
    end
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do
    _reduce(l, acc, f)
  end

  defp _reduce([], acc, _), do: acc
  defp _reduce([h|t], acc, func), do: _reduce(t, func.(h, acc), func)

  @spec append(list, list) :: list
  def append(a, b) do
    reverse(a)
    |> _append(b)
  end

  defp _append([], l), do: l
  defp _append(l, []), do: reverse(l)
  defp _append([h|t], l) do
    _append(t, [h|l])
  end


  @spec concat([[any]]) :: [any]
  def concat(ll) do
    reverse(ll)
    |> reduce([], &(append(&1, &2)))
  end

end
