class School
    
    # def roster
    #     @roster
    # end
    attr_reader :roster 
    def initialize(school_name)
       
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else    
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|     
            value.sort!
        end
    end

end

