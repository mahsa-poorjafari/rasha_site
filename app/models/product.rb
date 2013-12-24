# encoding: UTF-8
class Product < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy

  attr_accessible :description, :title, :pictures_attributes
  accepts_nested_attributes_for :pictures, :allow_destroy => true
 
  validates :title, :uniqueness => {:message => 'عنوان محصول تکراری است'}
  validates :title, :presence => {:message => 'عنوان محصول را بنویسید'}
  
  extend FriendlyId  
  friendly_id :title
  before_save :check_limit
  
  def check_limit
    if self.pictures.count > PICTURE_LIMIT     
      return false    
    end
  end 
  
  def sample_picture
    Picture.where(product_id:self.id).first
  end
  
  private
  def pictures_limit
    errors.add(:base, "حداکثر #{MAX_SERVICE_PICTURES} عکس برای هر محصول میتوانید داشته باشید") if self.pictures.size > MAX_SERVICE_PICTURES
  end
  
end

