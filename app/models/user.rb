class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  
  validates :name, :uniqueness => true
  validates :name,  :presence => {:message => "can't be empty"}
  validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  validates_confirmation_of :password,
                              message: 'should match confirmation'
end
