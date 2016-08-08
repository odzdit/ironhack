class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :gif_url
      t.string :votes
      
      t.timestamps null: false
    end
  end
end
