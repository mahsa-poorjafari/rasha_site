# encoding: UTF-8
class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  
  validates :name, :uniqueness => true
  validates :name,  :presence => {:message => "نام کاربری را وارد کنید"}
  validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  validates_confirmation_of :password,
                              message: 'پسورد را اشتباه صحیح وارد کنید'
end
