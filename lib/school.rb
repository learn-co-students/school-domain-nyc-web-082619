require 'pry'
class School
  
  def initialize (sName)
    @schoolName = sName
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade].<< name
    puts @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.sort_by { |grade,names| names}.to_h
    @roster.each do |grade,names|
      @roster[grade] = names.sort 
    end
  end
end