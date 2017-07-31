class DeleteAdminsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :admins
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
