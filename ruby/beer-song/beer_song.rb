class BeerSong

  def verse(verse_number)
    first_line(verse_number) + second_line(verse_number)
  end

  def verses(verse_number_high_bound, verse_number_low_bound)
    verse_number_high_bound.downto(verse_number_low_bound)
                           .map { |verse_number| verse(verse_number) }
                           .join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def first_line(verse_number)
    return "No more bottles of beer on the wall, no more bottles of beer.\n"\
           if verse_number.zero?

    bottles = bottle_term(verse_number)
    "#{verse_number} #{bottles} of beer on the wall, #{verse_number} #{bottles} of beer.\n"
  end

  def second_line(verse_number)
    return "Take it down and pass it around, no more bottles of beer on the wall.\n"\
          if verse_number == 1
    return "Go to the store and buy some more, 99 bottles of beer on the wall.\n"\
          if verse_number.zero?

    bottles = bottle_term(verse_number - 1)
    "Take one down and pass it around, #{verse_number - 1} #{bottles} of beer on the wall.\n"
  end

  def bottle_term(bottle_term)
    return 'bottle' if bottle_term == 1
    'bottles'
  end
end

module BookKeeping
  VERSION = 2
end
