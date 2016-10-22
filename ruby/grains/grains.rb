class Grains
  def self.square(square_number)
    2**(square_number - 1)
  end

  def self.total
    (1..64).to_a.inject(0) { |sum, x| sum + square(x) }
  end
end
