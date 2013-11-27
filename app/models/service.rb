class Service < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  
  attr_accessible :description, :title, :pictures_attributes
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The sevice title must be informed.'}
  extend FriendlyId  
  friendly_id :title

    
  def sample_picture
    Picture.where(service_id:self.id).first
  end
  
end
