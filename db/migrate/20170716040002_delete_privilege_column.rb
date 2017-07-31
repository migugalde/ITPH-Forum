class DeletePrivilegeColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :privilege
  end
end
