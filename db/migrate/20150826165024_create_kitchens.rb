class CreateKitchens < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.string "kitchen_name"
      t.boolean "visible", :default => false
      t.timestamps 

    end
  end
end
