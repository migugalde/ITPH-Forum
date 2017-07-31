class CreateRepages < ActiveRecord::Migration
  def change
    create_table :repages do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
