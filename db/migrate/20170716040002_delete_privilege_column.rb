class DeletePrivilegeColumn < ActiveRecord::Migration
  def change
    remove_column :users, :privilege
  end
end
