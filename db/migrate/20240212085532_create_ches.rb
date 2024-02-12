class CreateChes < ActiveRecord::Migration[6.1]
  def change
    create_table :ches do |t|
      t.integer :customers_id, null: false
      t.text :post, null: false

      t.timestamps
    end
  end
end
