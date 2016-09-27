class Squares
  def initialize(number)
    @number = number
  end

  def sum_of_squares
    (0..@number).reduce(0){|sum, num| sum + num**2 }
  end

  def square_of_sum
    ((0..@number).reduce(:+))**2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
