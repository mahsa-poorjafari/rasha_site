class Product < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  attr_accessible :description, :title, :description_fa, :title_fa, :pictures_attributes
  accepts_nested_attributes_for :pictures
 
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The product title must be informed.'}

end
