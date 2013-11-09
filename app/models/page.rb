class Page < ActiveRecord::Base
  attr_accessible :page_html, :page_html_fa, :title, :title_fa

  validates :title, :uniqueness => true
  validates :title, :presence => {:message => 'The page title must be informed.'}
  extend FriendlyId  
  friendly_id :title

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  
  def page_html
    I18n.locale == :fa ? self.read_attribute("page_html_fa") : self.read_attribute("page_html")
  end
end
