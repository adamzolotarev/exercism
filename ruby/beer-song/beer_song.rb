class BeerSong
  def verse(n)
    case n
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
      "Take one down and pass it around, #{n - 1} bottle#{n != 2 ? 's' : ''} of beer on the wall.\n"
    end
  end

  def verses(verse_number_high_bound, verse_number_low_bound)
    verse_number_high_bound.downto(verse_number_low_bound)
                           .map { |verse_number| verse(verse_number) }
                           .join("\n")
  end

  def lyrics
    verses(99, 0)
  end
end

module BookKeeping
  VERSION = 2
end
