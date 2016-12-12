class Series

  def initialize(digits)
    @digits = digits
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @digits.length

    (0..@digits.length - slice_size).map do |index|
      @digits[index, slice_size].chars.map(&:to_i)
    end
  end
end
