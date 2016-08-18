defmodule Meetup do
  @moduledoc """
  Calculate meetup dates.
  """

  @type weekday ::
      :monday | :tuesday | :wednesday
    | :thursday | :friday | :saturday | :sunday

  @type schedule :: :first | :second | :third | :fourth | :last | :teenth

  @doc """
  Calculate a meetup date.

  The schedule is in which week (1..4, last or "teenth") the meetup date should
  fall.
  """
  @spec meetup(pos_integer, pos_integer, weekday, schedule) :: :calendar.date
  # def meetup(year, month, weekday, schedule) do
  #
  # end
  def meetup(year, month, weekday, :teenth) do
     13..20
     |> Enum.map(fn(day) -> {year, month, day} end)
     |> Enum.find(fn(date) -> is_weekday?(date, weekday) end)
  end

  defp is_weekday?(date, weekday) do
    :calendar.day_of_the_week(date) == weekday_number(weekday)
  end
  defp weekday_number(weekday) do
    case weekday do
      :monday     -> 1
      :tuesday    -> 2
      :wednesday  -> 3
      :thursday   -> 4
      :friday     -> 5
      :saturday   -> 6
      :sunday     -> 7
    end
  end

end
