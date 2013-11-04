class User < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :uniqueness => true
  validates :name, :presence => {:message => 'The user name must be informed.'}
end
