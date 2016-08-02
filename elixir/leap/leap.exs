defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
  """
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) do
    cond do
      divisible_by_400?(year) -> true
      divisible_by_100?(year) -> false
      divisible_by_4?(year) -> true
      true -> false
    end
  end

  defp divisible_by_4?(year), do: rem(year, 2) == 0
  defp divisible_by_100?(year), do: rem(year, 100) == 0
  defp divisible_by_400?(year), do: rem(year, 400) == 0
end
