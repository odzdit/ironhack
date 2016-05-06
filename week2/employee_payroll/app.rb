require_relative('lib/employee_class.rb')
require_relative('lib/employee_payroll.rb')

josh = HourlyEmployee.new('Josh', 'nachoemail@gmail.com', 40, 50)
nizar = SalariedEmployee.new('Nizar', 'nizar@starcraft.com', 100000)
ted = MultiPaymentEmployee.new('Ted', 'hello@bye.com', 6000, 300, 50)

ironhack = [josh, nizar, ted]

payroll = Payroll.new(ironhack)

payroll.pay_employees
