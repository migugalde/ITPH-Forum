class AddColumnPublicToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :public, :boolean, default: false
  end
end
