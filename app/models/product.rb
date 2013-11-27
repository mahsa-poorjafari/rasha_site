class Product < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy

  attr_accessible :description, :title, :pictures_attributes
  accepts_nested_attributes_for :pictures, :allow_destroy => true
 
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The product title must be informed.'}
  
  extend FriendlyId  
  friendly_id :title

  
  def sample_picture
    Picture.where(product_id:self.id).first
  end
end

