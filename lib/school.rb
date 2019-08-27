require "pry"
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    unless @roster[grade]
      @roster[grade] = []
    end
    @roster[grade].push(name)
  end
  def grade(grade_number)
    @roster[grade_number]
  end
  def sort
    sorted_names = @roster.each {|grade, names| names.sort!}
  end
end