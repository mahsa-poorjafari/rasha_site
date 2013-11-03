class Slide < ActiveRecord::Base
  attr_accessible :description, :image
  has_attached_file :image, :styles => { :small => "150x150>", :large => "950X360" }
end
