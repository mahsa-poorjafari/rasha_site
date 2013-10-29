class Product < ActiveRecord::Base

  attr_accessible :description, :photo, :title  
  has_attached_file :photo, :styles => {:small => "150x150>", :medium => "400x400>"},
					:url  => "/assets/galleries/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/galleries/:id/:style/:basename.:extension"
                    
  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
