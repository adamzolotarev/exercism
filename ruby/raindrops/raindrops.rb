module Raindrops
  def convert(number)
    drop = ''
    drop << 'Pling' if number % 3 == 0
    drop << 'Plang' if number % 5 == 0
    drop << 'Plong' if number % 7 == 0

    drop.empty? ? number.to_s : drop
  end
end

Raindrops.extend(Raindrops)

module BookKeeping
  VERSION = 2
end
