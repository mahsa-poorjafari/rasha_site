# encoding: UTF-8
class Service < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  
  attr_accessible :description, :title, :pictures_attributes
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  validates :title, :uniqueness => {:message => 'عنوان خدمات تکراری است'}
  validates :title, :presence => {:message => 'عنوان خدمات را بنویسید'}
  validate :pictures_limit
  
  
  extend FriendlyId  
  friendly_id :title
  
      
  def sample_picture
    Picture.where(service_id:self.id).first
  end
  
  private
  def pictures_limit
    errors.add(:base, "حداکثر #{MAX_SERVICE_PICTURES} عکس برای هر خدمات میتوانید داشته باشید") if self.pictures.size > MAX_SERVICE_PICTURES
  end
  
end
