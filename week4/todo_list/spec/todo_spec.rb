require_relative("../lib/todo")
require_relative("../lib/todo_list")
require("spec_helper")


describe "Task" do 
	
	before :each do 
		@task = Task.new("buy milk")
	end

	# describe "add" do 
	# 	it "should add a new task to todo array" do 
	# 		expect(@task.add(new_task)).to eq(array + new_task)
	# 	end
	# end

	describe "complete?" do
		it "should determine if task is completed or not" do 
			expect(@task.complete?).to eq(false)
		end
	end

	describe "complete!" do 
		it "should reverse status of task from false to true" do 
			@task.complete!
			expect(@task.complete?).to eq(true)
		end
	end

	describe "make_incomplete!" do 
		it "should reverse status of task from true to false" do
			@task.make_incomplete! 
			expect(@task.complete?).to eq(false)
		end
	end

	describe "update_content!" do 
		it "should update the task's text" do 
			@task.update_content!("shopping")
			expect(@task.content).to eq("shopping")
		end
	end

end

describe "ToDoList" do

	before :each do 
		@list = TodoList.new
		@task_1 = Task.new("buy milk")
		@task_2 = Task.new("walk the dog")
		@list.add_task(@task)
	end

	describe "add_task" do 
		it "should add new task to array of tasks" do 
			expect(@list.tasks.count).to eq(1)
		end
	end

	describe "delete_task" do
		it "should remove tasks by its ID" do
			@list.delete_task(1)
			expect(@list.tasks.count).to eq(0)
		end
	end

	describe "find_task_by_id" do 
		it "should identify a specific task by id number" do 
			task = @list.find_task_by_id(@task.id)
			expect(task.content).to eq("buy milk")
		end

		it "should return nil if id does not exist" do
			expect(@list.find_task_by_id(2)).to eq(nil)
		end
	end
end
