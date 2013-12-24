# encoding: UTF-8
class Message < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone, :visited
  validates :email, :name, :message, :presence => {:message => 'فیلد های ستاره دار را پر کنید'}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
end
