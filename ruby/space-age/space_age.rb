class SpaceAge
  attr_reader :seconds

  EARTH_YEAR_SECONDS = 31_557_600.0

  def initialize(seconds)
    @seconds = seconds
  end

  PLANETS_ORBITAL_PERIOD = {
    'earth' => 1.0,
    'mercury' => 0.2408467,
    'venus' => 0.61519726,
    'mars' => 1.8808158,
    'jupiter' => 11.862615,
    'saturn' => 29.447498,
    'uranus' => 84.016846,
    'neptune' => 164.79132
  }.freeze

  PLANETS_ORBITAL_PERIOD.each do |planet, earth_years|
    define_method :"on_#{planet}" do
      seconds / (EARTH_YEAR_SECONDS * earth_years)
    end
  end
end
