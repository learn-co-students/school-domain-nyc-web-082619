class School 
  attr_accessor :student, :grade, :class, :sort, :roster
  attr_reader :school 
  
  
  def initialize(school)
    @school = school 
    @roster = {}
  end
 
  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else 
      @roster[grade] << student 
    end 
  end 
  
  def grade(grade) 
    return @roster[grade] 
  end
  
  def sort()
    @roster.each do |grade, student|
      student.sort!
    end
  end
  
end