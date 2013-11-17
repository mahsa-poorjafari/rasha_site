class Service < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  
  attr_accessible :description, :title, :pictures_attributes, :description_fa, :title_fa
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The sevice title must be informed.'}
  extend FriendlyId  
  friendly_id :title_fa

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
  
  def sample_picture
    Picture.where(service_id:self.id).first
  end
  
end
