class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string "country_name"
      t.integer "kitchen_id"
      t.boolean "visible", :default => false
      t.timestamps 
    end
     add_index("countries", "kitchen_id")
  end
end
