class AddImageNameToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :image_name, :string
  end
end
