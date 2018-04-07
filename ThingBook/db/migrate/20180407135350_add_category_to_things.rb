class AddCategoryToThings < ActiveRecord::Migration
  def change
    add_column :things, :category, :string
  end
end
