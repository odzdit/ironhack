class AddPriceToProducts < ActiveRecord::Migration
  def change
    change_column :products, :minimum_bid, :float, default: 0
  end
end
