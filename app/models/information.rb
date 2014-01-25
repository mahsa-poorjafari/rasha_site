# encoding: UTF-8
class Information < ActiveRecord::Base
  attr_accessible :description, :title
  validates :title, :presence => {:message => 'عنوان خبر را وارد کنید.'}
end
