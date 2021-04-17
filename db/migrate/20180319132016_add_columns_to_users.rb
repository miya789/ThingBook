class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :image_name, :string
    add_column :users, :password, :string
  end
end
