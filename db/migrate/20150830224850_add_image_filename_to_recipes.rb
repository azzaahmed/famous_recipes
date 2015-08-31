class AddImageFilenameToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :image_filename, :string
  end
end
