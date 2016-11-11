class Binary
  def initialize(binary)
    raise ArgumentError unless valid_binary?(binary)
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

  private

  def valid_binary?(binary)
    binary.chars.all? { |c| c == '0' || c == '1' }
  end
end

module BookKeeping
  VERSION = 2
end
