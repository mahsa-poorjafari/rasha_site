# encoding: UTF-8
class User < ActiveRecord::Base
  attr_accessible :name, :password, :email, :password_confirmation
  
  validates :name, :uniqueness => true
  validates :name, :email,  :presence => {:message => "فیلدهای ستاره دارد را پر کنید."}
  validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  validates_confirmation_of :password,
                              message: 'پسورد را صحیح وارد کنید'
end
