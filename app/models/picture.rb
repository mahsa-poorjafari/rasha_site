class Picture < ActiveRecord::Base
  attr_accessible :description,  :image
  belongs_to :product
  belongs_to :service
  has_attached_file :image, :styles => { :small => "150x150>", :medium => "300X300" }
  
  
end
