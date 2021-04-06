class AddAdminToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin1, :boolean, default: false
  end
end
