require_relative('../lib/todo_list')
require('spec_helper')

#TDD approach makes you write the test before you write the code. This can help you
# create and write the methods before solving the problem
describe "ToDoList" do 

	before :each do 
		@List = ToDoList.new
	end
end
	describe "create_task" do 
		it "It should create a task and add it to the array" do
		expect(@List.create_task("Go Shopping")).to eq("Go shopping") 
	end
end
