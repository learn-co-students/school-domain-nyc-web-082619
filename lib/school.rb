# code here!
require 'pry'
class School


    attr_reader ;name
    attr_accessor :roster

    def initialize(name)
        #@name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do | grade, name|
            roster[grade] = name.sort
        end

    

    end



end
