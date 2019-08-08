class Array
  def keep
    new_array = []
    each { |element| new_array.push(element) if yield(element) }
    new_array
  end

  def discard(&block)
    self - keep(&block)
  end
end
