class Recipe < ActiveRecord::Base
	belongs_to :country
	has_many :comments
	def self.search(search)
  if search
    where(['recipe_name LIKE?', "%#{search}%"])
  else
  
  
    all
  end
end
end
 