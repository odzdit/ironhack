require_relative("../lib/todo")
require("spec_helper")

describe "Task" do 
    
    before :each do 
        @task = Task.new("buy_milk")
    end

    # describe "add" do 
    #     it "should add a new task to todo array" do 
    #         expect(@task.add(new_task)).to eq(array + new_task)
    #     end
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
        @task = Task.new("buy_milk")
    end

    describe "add_task" do 
        it "should add new task to array of tasks" do 
            @task.add_task
            expect(@tasks.length).to eq(1)
        end
    end

end