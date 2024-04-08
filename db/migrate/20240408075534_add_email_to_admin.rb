class AddEmailToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :email, :integer
  end
end
