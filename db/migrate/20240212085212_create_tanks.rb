class CreateTanks < ActiveRecord::Migration[6.1]
  def change
    create_table :tanks do |t|
      
      t.string :name, null:  false
      t.text :introduction, null: false
      

      t.timestamps
    end
  end
end
