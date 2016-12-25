class Array
  def keep
    new_array = []
    each { |element| new_array.push(element) if yield(element) }
    new_array
  end

  def discard
    new_array = []
    each { |element| new_array.push(element) unless yield(element) }
    new_array
  end
end
