class DropThreddedTablesTwo < ActiveRecord::Migration
  def change
    drop_table :thredded_messageboard_users
    drop_table :thredded_notifications_for_private_topics
  end
end
