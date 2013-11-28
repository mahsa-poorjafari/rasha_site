class Customer < ActiveRecord::Base
  attr_accessible :description, :name, :image
  attr_accessor :image_file_name
  attr_accessor :image_content_type
  attr_accessor :image_file_size
  attr_accessor :image_updated_at 
  
  has_attached_file :image, :styles => { :small => "100x100#", :medium => "200X200#", :large => "350X350#" }
                    
  
  validates :image, :presence => {:message => 'The Customer Logo must be informed.'}
  
end
