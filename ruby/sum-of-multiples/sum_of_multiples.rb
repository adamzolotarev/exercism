class SumOfMultiples

  def initialize(*args)
    @multiples = args
  end

  def to(max)
    (0...max).select { |n| @multiples.any? { |b| (n % b).zero? } }.reduce(&:+)
  end
end
