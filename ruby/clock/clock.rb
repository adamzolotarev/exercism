class Clock

  def self.at(hours, minutes)
    new(hours, minutes)
  end

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def to_s
    "#{hours_format}:#{minutes_format}"
  end

  def +(other_minutes)
    Clock.new(@hours, @minutes + other_minutes)
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end

  private

  def hours_format
    add_hours = @minutes / 60
    hours = (@hours + add_hours) % 24
    clock_format(hours)
  end

  def minutes_format
    remaining_minutes = @minutes % 60
    clock_format(remaining_minutes)
  end

  def clock_format(time)
    time.to_s.rjust(2, '0')
  end
end

module BookKeeping
  VERSION = 2
end
