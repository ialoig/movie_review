class Movie < ActiveRecord::Base
	belongs_to :user
	
  	has_attached_file :image, 
  		url: "/files/:class/:attachment/:id/:style/:basename.:extension"
  	validates_attachment_content_type :image, 
  		content_type: /\Aimage\/.*\z/
end
