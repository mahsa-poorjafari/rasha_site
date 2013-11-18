class Page < ActiveRecord::Base
  attr_accessible :page_html, :page_html_fa, :title, :title_fa

  validates :title, :title_fa, :uniqueness => true
  validates :title, :title_fa, :presence => {:message => 'The page title must be informed.'}
  extend FriendlyId  
  friendly_id :title_fa

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  
  def page_html
    I18n.locale == :fa ? self.read_attribute("page_html_fa") : self.read_attribute("page_html_en")
  end
end
