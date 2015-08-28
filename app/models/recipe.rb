class Recipe < ActiveRecord::Base
	belongs_to :country

	def self.search(search)
  if search
    where(['recipe_name LIKE?', "%#{search}%"])
  else
  
  
    all
  end
end
end
 