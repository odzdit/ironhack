class AddPostIdAndLabelIdToLabeledPosts < ActiveRecord::Migration
  def change
  	add_column :labelled_posts, :label_id, :integer
  	add_column :labelled_posts, :post_id, :integer
  end
end
