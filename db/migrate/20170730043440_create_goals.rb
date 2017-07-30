class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references :user, index: true, foreign_key: true
      t.text :title
      t.text :step1
      t.text :step2
      t.text :step3
      t.text :step4
      t.text :step5
      t.text :step6
      t.text :step7
      t.text :step8
      t.text :step9
      t.text :step10

      t.timestamps null: false
    end
  end
end
