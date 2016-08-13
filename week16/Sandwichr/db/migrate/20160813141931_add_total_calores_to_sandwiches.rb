class AddTotalCaloresToSandwiches < ActiveRecord::Migration[5.0]
  def change
  	add_column :sandwiches, :total_calores, :integer, :default => 0
  end
end
