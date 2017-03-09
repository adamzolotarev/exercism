class Bst
  attr_reader :data
  attr_accessor :left, :right
  VERSION = 1

  def initialize(value)
    @data = value
  end

  def insert(value)
    if value <= data
      if @left
        @left.insert(value)
      else
        @left = Bst.new(value)
      end
    else
      if @right
        @right.insert(value)
      else
        @right = Bst.new(value)
      end
    end
  end

  def each
    if block_given?
      to_enum.each { |item| yield(item) }
    else
      to_enum
    end
  end

  def to_enum
    Enumerator.new do |y|
      left.each { |child| y << child } if left
      y << data
      right.each { |child| y << child } if right
    end
  end
end
