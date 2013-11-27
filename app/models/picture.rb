class Picture < ActiveRecord::Base

  attr_accessible :description,  :image
  
  belongs_to :product
  belongs_to :service
  
  has_attached_file :image, :styles => { :small => "150x150#", :medium => "200X200#", :large => "350X350#" }
  
  
  
  
end
