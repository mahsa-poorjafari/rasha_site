class Picture < ActiveRecord::Base
  attr_accessible :description, :description_fa,  :image
  belongs_to :product
  belongs_to :service
  has_attached_file :image, :styles => { :small => "150x150>", :medium => "300X300" }
  
  
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
end
