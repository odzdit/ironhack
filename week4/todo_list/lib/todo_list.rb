class ToDoList
	def initialize
		@tasks = []
	end

	def create_task(task)
		 @tasks.push(task)
	end

	def delete_task(task)
		@tasks.delete(task)
	end
		
	def update_task(task)
		todo_list.delete(task)
	end
end
