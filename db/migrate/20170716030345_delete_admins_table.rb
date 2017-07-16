class DeleteAdminsTable < ActiveRecord::Migration
  def up
    drop_table :admins
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
