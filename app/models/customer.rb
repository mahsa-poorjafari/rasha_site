# encoding: UTF-8
class Customer < ActiveRecord::Base
  attr_accessible :description, :name, :image
  
  
  has_attached_file :image, :styles => { :small => "100x100#", :medium => "200X200#", :large => "350X350#" }
                    
  
  validates :image, :presence => {:message => 'لوگوی مشتری را وارد کنید'}
  
end
