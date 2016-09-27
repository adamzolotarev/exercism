class Squares
  @square_of_sum
  @sum_of_squares
  @difference

  attr_reader:square_of_sum
  attr_reader:sum_of_squares
  attr_reader:difference

  def initialize(number)
    calculate_square_of_sum(number)
    calculate_sum_of_squares(number)
    @difference = @square_of_sum - @sum_of_squares

  end

  def calculate_sum_of_squares(number)
    @sum_of_squares = (0..number).reduce(0){|sum, num| sum + num**2 }
  end

  def calculate_square_of_sum(number)
    @square_of_sum = ((0..number).reduce(:+))**2
  end
end

module BookKeeping
  VERSION = 3
end
