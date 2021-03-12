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

        if @roster.has_key?(grade) 
             @roster[grade] << name 
        else 
             @roster[grade] = []
             @roster[grade] << name 
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort 
        sorted = {}
        @roster.collect do |grade, students|
            sorted[grade] = students.sort 
        end 
        sorted 
     end 
end 