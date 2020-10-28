class School
    
    attr_reader :school_name, :roster
    
    def initialize(school_name)
        @school_name = school_name
        @roster={}
    end
    
    def add_student(name,grade)
        if @roster[grade]#if nil
            @roster[grade]<<name
        else
            @roster[grade]=[] #if empty
            @roster[grade]<<name
        end
        
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        roster.each_value do |name|
            name.sort! #original array changes instead of returning new one
        end
        roster
        
    end

    
end
