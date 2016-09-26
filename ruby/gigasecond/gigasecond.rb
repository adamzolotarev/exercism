module Gigasecond
  GIGASECOND = 1_000_000_000
  def self.from(seconds)
    seconds + GIGASECOND
  end
end

Gigasecond.extend(Gigasecond)

module BookKeeping
  VERSION = 4
end
