class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
	attr_reader :hourly_rate, :hours_worked
	def initialize (name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	
	def calculate_salary
		@hourly_rate 
		new_salary = @hours_worked * @hourly_rate
	end
end

class SalariedEmployee < Employee
	attr_reader :yearly_salary
	def initialize (name, email, yearly_salary)
		super(name, email)
		@yearly_salary = yearly_salary
	end

	def calculate_salary
		new_salary = @yearly_salary / 52
	end
end


	
class MultiPaymentEmployee < Employee
	attr_reader :yearly_salary, :overtime_payment, :hours_worked
	def initialize (name, email, yearly_salary, overtime_payment, hours_worked)
		super(name, email)
		@yearly_salary = yearly_salary
		@overtime_payment = overtime_payment
		@hours_worked = hours_worked
	end

	def calculate_salary
		extra_hours = @hours_worked - 40
		if @hours_worked > 40
			overtime_salary = extra_hours * overtime_payment
		else
			overtime_salary = 0
		end
		new_salary = overtime_salary + (@yearly_salary/52)
	end
end
