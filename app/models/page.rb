# encoding: UTF-8
class Page < ActiveRecord::Base
  attr_accessible :page_html, :title
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'عنوان صفحه را بنویسید'}
  extend FriendlyId  
  friendly_id :title

 
end
