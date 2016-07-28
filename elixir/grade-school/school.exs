defmodule School do
  @moduledoc """
  Simulate students in a school.

  Each student is in a grade.
  """

  @doc """
  Add a student to a particular grade in school.
  """
  @spec add(map, String.t, integer) :: map
  def add(db, name, grade) do
    original = db[grade]
    case original == nil do
      true -> updated = [name]
      false -> updated = [name | original] |> Enum.sort
    end
    Map.put(db, grade, updated)
  end

  @doc """
  Return the names of the students in a particular grade.
  """
  @spec grade(map, integer) :: [String.t]
  def grade(db, grade) do
    g = db[grade]
    case g == nil do
      true -> []
      false -> g
    end
  end

  @doc """
  Sorts the school by grade and name.
  """
  @spec sort(map) :: [{integer, [String.t]}]
  def sort(db) do
    Enum.sort(db) 
  end
end
