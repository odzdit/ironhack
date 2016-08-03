class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :gif_url
      t.string :votes
      t.string :integer

      t.timestamps null: false
    end
  end
end
