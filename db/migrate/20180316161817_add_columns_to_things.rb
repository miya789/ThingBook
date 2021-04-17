class AddColumnsToThings < ActiveRecord::Migration
  def change
    add_column :things, :name, :string
    add_column :things, :image_name, :string
    add_column :things, :address, :string
  end
end
