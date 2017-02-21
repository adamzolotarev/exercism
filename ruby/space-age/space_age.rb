class SpaceAge
  attr_reader :seconds

  EARTH_YEAR_SECONDS = 31_557_600.0
  MERCURY_YEAR_SECONDS = 0.2408467 * EARTH_YEAR_SECONDS
  VENUS_YEAR_SECONDS = 0.61519726 * EARTH_YEAR_SECONDS
  MARS_YEAR_SECONDS = 1.8808158 * EARTH_YEAR_SECONDS
  JUPITER_YEAR_SECONDS = 11.862615 * EARTH_YEAR_SECONDS
  SATURN_YEAR_SECONDS = 29.447498 * EARTH_YEAR_SECONDS
  URANUS_YEAR_SECONDS = 84.016846 * EARTH_YEAR_SECONDS
  NEPTUNE_YEAR_SECONDS = 164.79132 * EARTH_YEAR_SECONDS

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds / EARTH_YEAR_SECONDS
  end

  def on_mercury
    seconds / MERCURY_YEAR_SECONDS
  end

  def on_venus
    seconds / VENUS_YEAR_SECONDS
  end

  def on_mars
    seconds / MARS_YEAR_SECONDS
  end

  def on_jupiter
    seconds / JUPITER_YEAR_SECONDS
  end

  def on_saturn
    seconds / SATURN_YEAR_SECONDS
  end

  def on_uranus
    seconds / URANUS_YEAR_SECONDS
  end

  def on_neptune
    seconds / NEPTUNE_YEAR_SECONDS
  end
end
