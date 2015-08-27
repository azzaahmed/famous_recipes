class Country < ActiveRecord::Base
	has_many :recipes
	belongs_to :kitchen

end
