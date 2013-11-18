#encoding: utf-8
namespace :db do
  desc "creates default pages -> about us and contact us"
  task :add_default_pages => :environment do
    Page.create(:title => "About us", :title_fa => "درباره ما");
    Page.create(:title => "Contact us", :title_fa => "تماس با ما")
  end

end
