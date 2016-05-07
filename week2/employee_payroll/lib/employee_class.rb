require_relative('salaried')
require_relative('hourly_payable')

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
	include HourlyPayable
	attr_reader :hourly_rate, :hours_worked
	def initialize (name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	
	def calculate_salary 
		calc_salary_hourly
	end
end

class SalariedEmployee < Employee
	include Salaried
	attr_reader :yearly_salary
	def initialize (name, email, yearly_salary)
		super(name, email)
		@yearly_salary = yearly_salary
	end

	def calculate_salary
		calc_salary_salaried
	end
end


	
class MultiPaymentEmployee < Employee
	include Salaried
	include HourlyPayable
	attr_reader :yearly_salary, :overtime_payment, :hours_worked
	def initialize (name, email, yearly_salary, overtime_payment, hours_worked)
		super(name, email)
		@yearly_salary = yearly_salary
		@overtime_payment = overtime_payment
		@hours_worked = hours_worked
	end

	def calculate_salary
		 calc_salary_hourly + calc_salary_salaried - (overtime_payment * 40)
	end
end
