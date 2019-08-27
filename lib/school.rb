# code here!
class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if(!roster[grade])
      roster[grade] = []
    end
    
    if(!roster[grade].include?(student_name))
      roster[grade].push(student_name)
    end
  end
  
  def grade(grade_num)
    roster[grade_num]
  end
  
  def sort
    @roster.map{|grade, names| [grade, @roster[grade].sort]}.to_h
  end
end