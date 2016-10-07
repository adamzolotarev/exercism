class Robot
  def initialize
    @name = random_name
  end

  def random_name
    random = Random.new
    random.rand('A'.ord..'Z'.ord).chr +
      random.rand('A'.ord..'Z'.ord).chr +
      random.rand(0..9).to_s +
      random.rand(0..9).to_s +
      random.rand(0..9).to_s
  end

  def reset
    @name = random_name
  end

  attr_accessor :name
end

module BookKeeping
  VERSION = 2
end
