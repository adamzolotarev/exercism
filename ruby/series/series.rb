class Series

  def  initialize(string)
    @string = string
  end

  def slices(slice_size)
    result = []
    elements = @string.split
    result << elements.slice(0, slice_size)
  end

  private

  def slice

  end
end
