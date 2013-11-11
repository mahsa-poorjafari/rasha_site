class Product < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  attr_accessible :description, :title, :description_fa, :title_fa, :pictures_attributes
  accepts_nested_attributes_for :pictures, :allow_destroy => true
 
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The product title must be informed.'}
  extend FriendlyId  
  friendly_id :title_fa

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
end
