# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
       @name = name
       @roster = {} 
    end 


    # The roster should be an empty hash upon initialization 
    # but will be built out to contain keys of grade levels. 
    # The value of each key will be an array of student names. 


    # add student to the school
    def add_student(student_name, grade)
       roster[grade]||= [] #creates the key if it's not already there
       roster[grade] << student_name #shovels in the value of the student_name, 
       # this array is the value of the key created above 
       # basically roster = {grade => [student_name]}
    end 


    # should take in an argument of a grade and return 
    # all of the students in that grade:
    def grade(student_grade)
        roster[student_grade] #checks the value there
    end 

    # sort students alphabetically in each grade
    def sort
        sorted = {} # create a new empty hash to store our sorted data
        roster.each do |grade, students| # iterate over each key,value pair
        sorted[grade] = students.sort # creates the key "grade" in the new "sorted" hash 
        # and assigns the sorted list of students as the value for the "grade" key
    end
    sorted
  end
end
