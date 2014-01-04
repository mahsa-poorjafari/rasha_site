# encoding: UTF-8
class Service < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  
  attr_accessible :description, :title, :pictures_attributes, :pdf
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  validates :title, :uniqueness => {:message => 'عنوان خدمات تکراری است'}
  validates :title, :presence => {:message => 'عنوان خدمات را بنویسید'}
  validate :pictures_limit
  
  has_attached_file :pdf,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_content_type :pdf,
      :content_type => [ 'application/pdf' ],
      :message => "نوع فایل نامعتبر است. فقط فایل پی دی اف مجاز است."
  
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
