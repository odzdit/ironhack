class CreateLabelledPosts < ActiveRecord::Migration
  def change
    create_table :labelled_posts do |t|

      t.timestamps null: false
    end
  end
end
