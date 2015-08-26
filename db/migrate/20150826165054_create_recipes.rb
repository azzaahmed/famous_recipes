class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
     
      
      t.string "recipe_name"
      t.integer "country_id"
      t.string "calories"
      t.text "recipe_content"
      t.boolean "visible", :default => false
      t.timestamps
    end
     add_index("recipes", "country_id")
  end
end
