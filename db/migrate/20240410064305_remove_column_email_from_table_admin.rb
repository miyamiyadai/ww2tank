class RemoveColumnEmailFromTableAdmin < ActiveRecord::Migration[6.1]
  def change
    remove_column :admins, :email
  end
end
