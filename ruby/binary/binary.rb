class Binary
  def initialize(binary)
    @binary = binary
  end

  def to_decimal
    binary_array = @binary.to_s.chars.map(&:to_i)
    total = 0

    binary_array.each_with_index do |n, i|
      total += 2**(binary_array.length - i - 1) * n
    end
    total
  end
end
