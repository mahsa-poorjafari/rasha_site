class User < ActiveRecord::Base
  attr_accessible :name, :password
  
  validates :name, :uniqueness => true
  validates :name, :password,  :presence => {:message => "can't be empty"}
end
