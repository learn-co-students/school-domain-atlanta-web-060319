class School
	attr_accessor :name
	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster[grade] == nil
			@roster[grade] = [].push(name)
		else
			@roster[grade].push(name)
		end
	end

	def grade(grade)
		self.roster[grade]
	end

	def sort
		self.roster.each {|grade, students|
			@roster[grade] = students.sort
		}
	end
end

