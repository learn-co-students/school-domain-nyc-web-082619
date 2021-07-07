class School
    attr_reader :roster
    def initialize(xyz)
        @school = xyz
        @roster = {}
    end
    def add_student(name, number) 

        if roster[number]
            roster[number] << name
        else 
            roster[number] = []
            roster[number] << name
        end
    end
    def grade(number)
        roster[number]
    end
    def sort
        new = {}
        roster.keys.sort.each do |num|
            new[num] = roster[num]
            new[num]= new[num].sort
        end
        @roster = new
        roster
    end

end
