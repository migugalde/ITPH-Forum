class CreateRepages < ActiveRecord::Migration[5.1]
  def change
    create_table :repages do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
