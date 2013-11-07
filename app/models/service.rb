class Service < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  attr_accessible :description, :title, :pictures_attributes, :description_fa, :title_fa
  accepts_nested_attributes_for :pictures
  
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The sevice title must be informed.'}
  extend FriendlyId  
  friendly_id :title

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
  
end
