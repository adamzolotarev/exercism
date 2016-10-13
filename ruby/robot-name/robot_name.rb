require 'set'

class Robot
  attr_reader :name
  @@taken_robot_names ||= Set.new

  def initialize
    @name = random_name
  end

  def random_name
    new_name = Array.new(2) { ('A'..'Z').to_a.sample }.join +
      Array.new(3) { ('0'..'9').to_a.sample }.join
    return new_name if @@taken_robot_names.add?(new_name)
    random_name
  end

  def reset
    @name = random_name
    @@taken_robot_names.delete?(@name)
  end

  private :random_name
end

module BookKeeping
  VERSION = 2
end
