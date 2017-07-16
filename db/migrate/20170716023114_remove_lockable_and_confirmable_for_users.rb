class RemoveLockableAndConfirmableForUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :confirmation_token
      t.remove :confirmed_at
      t.remove :confirmation_sent_at
      t.remove :unconfirmed_email
      
      t.remove :failed_attempts
      t.remove :unlock_token
      t.remove :locked_at
    end
  end
end
