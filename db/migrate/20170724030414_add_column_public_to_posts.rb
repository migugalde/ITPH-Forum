class AddColumnPublicToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :public, :boolean, default: false
  end
end
