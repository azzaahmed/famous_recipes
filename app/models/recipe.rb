class Recipe < ActiveRecord::Base
	acts_as_votable

	has_attached_file :image ,style: {medium: "300x300>", thumb: "100x100>"}
   
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

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
 