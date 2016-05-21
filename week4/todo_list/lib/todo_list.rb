class ToDoList
	def initialize
		@task = task
	end

	def create_task(task)
		todo_list = []
		todo_list.push(task)
	end

	def delete_task(task)
		todo_list.delete(task)
	end
		
	def update_task(task)
		todo_list.delete(task)
	end
end
