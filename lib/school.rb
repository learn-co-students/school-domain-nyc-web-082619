# code here!

class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end


    def roster
        @roster
    end


    def add_student(name, grade)
        if !roster.has_key?(grade) then
            roster[grade] = []
        end

        roster[grade] << name
    end

    def grade(num)
        roster[num]
    end

    def sort
        new_roster = {}
        roster.each do |grade, students|
            new_roster[grade] = students.sort
            end
        
        
        return new_roster
        end
end

@school = School.new("Bayside High School")
