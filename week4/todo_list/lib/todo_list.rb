class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    	@tasks
    end

    def delete_task(number)
    	@tasks.delete_if {|task| task.id == number}
    end

    def find_task_by_id(number)
    	@tasks.find {|task| task.id == number}
    end
end