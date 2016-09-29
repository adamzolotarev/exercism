module Raindrops
  def convert(number)
    drop = ''
    drop << 'Pling' if (number % 3).zero?
    drop << 'Plang' if (number % 5).zero?
    drop << 'Plong' if (number % 7).zero?

    drop.empty? ? number.to_s : drop
  end
end

Raindrops.extend(Raindrops)

module BookKeeping
  VERSION = 2
end
