class Series

  def  initialize(string)
    @chars = string
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @chars.length
    i = 0
    result = []
    while (i + slice_size) <= @chars.length
      slice = @chars.slice(i, slice_size)
      result << slice.split('').to_a.map(&:to_i)
      i += 1
    end

    result
  end
end
