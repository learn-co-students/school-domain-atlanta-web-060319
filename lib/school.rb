require 'pry'

# code here!
class School
   attr_accessor :roster
   
   def initialize(name)
    @name = name
    @roster = {}
end
   

   def add_student(name, grade)
    if roster.has_key?(grade)
        roster[grade] << name
    else 
        roster[grade] = []
        roster[grade] << name
    end

   end

   def grade(grade)
    if roster.has_key?(grade)
        roster[grade]
    end
   end

   def sort
    new_hash = {}
    roster.each do |k, v|
       if new_hash.has_key?(k)
        roster[k] << v.sort 
       else
        new_hash[k] = v.sort
       end
       
    
    end
    new_hash
  end


   
   
    
end