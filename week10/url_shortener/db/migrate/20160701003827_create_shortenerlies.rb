class CreateShortenerlies < ActiveRecord::Migration
  def change
    create_table :shortenerlies do |t|

      t.timestamps null: false
    end
  end
end
