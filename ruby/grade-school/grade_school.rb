class School
  def initialize
    @students = {}
  end

  def students(grade)
    students_in_grade = @students[grade] || []
    students_in_grade.sort!
  end

  def add(name, grade)
    @students[grade] ||= []
    @students[grade] << name
  end

  def students_by_grade
    return [] if @students.empty?
    @students.each_key
             .map { |key| { grade: key, students: students(key) } }
             .sort_by { |hash| hash[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
