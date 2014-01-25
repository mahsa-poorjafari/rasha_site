# encoding: UTF-8
class Associate < ActiveRecord::Base
  attr_accessible :name,:description, :image
  has_attached_file :image, :styles => { :small => "100x100>", :medium => "200X200>", :large => "350X350>" }
  validates :image, :presence => {:message => 'لوگوی شرکت همکار را وارد کنید'}
end
