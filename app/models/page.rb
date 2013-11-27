class Page < ActiveRecord::Base
  attr_accessible :page_html, :title
  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The page title must be informed.'}
  extend FriendlyId  
  friendly_id :title

 
end
