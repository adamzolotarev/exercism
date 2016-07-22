defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t
  def verse(number) do    
    cond do
      number == 1 -> last_verse
      number == 2 -> verse_1_bottle
      true -> _verse(number)
    end
  end

  defp verse_1_bottle do
    """
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"""
  end

  defp last_verse do
    """
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    """
  end

    defp _verse(number) do
    bottles_on_the_wall = number - 1
    bottles_left_after_take_one = number - 2
    bottles_left_after_take_one_name = bottles(bottles_left_after_take_one)
        """
#{bottles_on_the_wall} bottles of beer on the wall, #{bottles_on_the_wall} bottles of beer.
Take one down and pass it around, #{bottles_left_after_take_one} #{bottles_left_after_take_one_name} of beer on the wall.
    """
  end

  defp bottles(number) do
    case number == 1 do
      true -> "bottle"
      false -> "bottles"
    end
  end



  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t) :: String.t
  def lyrics, do: lyrics(100..1)

  def lyrics(range) do
    range
    |> Enum.reduce("", fn(x, acc) -> acc <> verse(x) <> "\n" end)
    |> String.slice(0..-2)    
  end
end
