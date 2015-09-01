class Recipe < ActiveRecord::Base
	acts_as_votable


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
 