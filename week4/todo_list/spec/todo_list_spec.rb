require_relative('../lib/todo_list')
require_relative('../lib/task')
require('spec_helper')

#TDD approach makes you write the test before you write the code. This can help you
# create and write the methods before solving the problem
describe "ToDoList" do 

	before :each do 
		todo_list = ToDoList.new
	end
end
	describe "create_task" do 
		it "It should create a task and add it to the array" do
		expect(todo_list.create_task("Go Shopping")[0]).to eq("Go shopping") 
	end
end
  