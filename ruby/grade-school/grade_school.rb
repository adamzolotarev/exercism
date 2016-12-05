class School
  def initialize
    @students = {}
  end

  def students(grade)
    students_in_grade = @students[grade] || []
    students_in_grade.sort
  end

  def add(name, grade)
    @students[grade] ||= []
    @students[grade] << name
  end

  def students_by_grade
    return [] if @students.empty?
    @students.keys.sort.collect do |grade|
      { grade: grade, students: students(grade) }
    end
  end
end

module BookKeeping
  VERSION = 3
end
