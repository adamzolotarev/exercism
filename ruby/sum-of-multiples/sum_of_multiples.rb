class SumOfMultiples

  def initialize(*args)
    @divisibles = args
  end

  def to(max)
    (1..max - 1).inject(0) { |acc, elem| divisible?(elem) ? acc + elem : sum }
  end

  private

  def divisible?(number)
    @divisibles.any? { |e| (number % e).zero? }
  end
end
