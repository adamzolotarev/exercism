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
     find_date(13..20, year, month, weekday)
     |> List.first()
  end

  def meetup(year, month, weekday, :first) do
    findDaysInMonth(year, month, weekday)
    |> List.first()
  end


  def meetup(year, month, weekday, :second) do
     findDaysInMonth(year, month, weekday)
     |> Enum.at(1)
  end
  def meetup(year, month, weekday, :third) do
     findDaysInMonth(year, month, weekday)
     |> Enum.at(2)
  end
  def meetup(year, month, weekday, :fourth) do
     findDaysInMonth(year, month, weekday)
     |> Enum.at(3)
  end
  def meetup(year, month, weekday, :last) do
     findDaysInMonth(year, month, weekday)
     |> List.last()
  end

  defp findDaysInMonth(year, month, weekday) do
    1..:calendar.last_day_of_the_month(year, month)
    |> find_date(year, month, weekday)
  end

  defp find_date(day_range, year, month, weekday) do
     day_range
     |> Enum.map(fn(day) -> {year, month, day} end)
     |> Enum.filter(fn(date) -> is_weekday?(date, weekday) end)
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
