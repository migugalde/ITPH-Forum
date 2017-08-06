class AddGraduationToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :graduation, :boolean
  end
end
