class Movie < ActiveRecord::Base
  searchkick
	belongs_to :user
  has_many :reviews
	
  has_attached_file :image,
		styles: {
			medium: "400x600#"
  },
    convert_options: {
    	medium: "-quality 70 -strip",
     	original: "-quality 90"
  },
  	url: "/files/:class/:attachment/:id/:style/:basename.:extension"
  validates_attachment_content_type :image, 
  	content_type: /\Aimage\/.*\z/
end
