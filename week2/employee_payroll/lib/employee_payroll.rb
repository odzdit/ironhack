class Payroll
	def initialize(employees)
		@employees = employees
	end

	def pay_employees
		total = 0
		@employees.each do | x |
			puts "The amount you're paying #{x.name} is #{x.calculate_salary}"
		total += x.calculate_salary 
		end
		puts "The Total amount of salay paid is #{total}"
	end
end

