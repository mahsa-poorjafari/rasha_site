class Service < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  attr_accessible :description, :title, :pictures_attributes
  accepts_nested_attributes_for :pictures
end
