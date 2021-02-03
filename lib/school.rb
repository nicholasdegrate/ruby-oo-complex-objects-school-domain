# code here!
class School

    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        # roaster[grade] #=> {9 => blank }
        # if roster[grade] is blank return a empty string =
        roster[grade] ||= []
        roster[grade] << name
        puts roster
    end

    def grade(student_grade)
        # roster[student_grade] => grabs the grade in the roster
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each { |grade, student|
            sorted[grade] = student.sort
        }
        sorted
    end
end


school = School.new("Bayside High School")

zach = school.add_student("Zach Morris", 9)

puts zach
puts school.sort