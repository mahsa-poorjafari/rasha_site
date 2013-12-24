#encoding: utf-8
namespace :db do
  desc "creates default pages -> about us and contact us"
  task :add_default_pages => :environment do
    Page.create(:title => "About us", :title => "درباره ما") if Page.where(title:"About us").blank?
    Page.create(:title => "Contact us", :title => "تماس با ما") if Page.where(title:"Contact us").blank?
  end

  desc "creates default users"
  task :create_default_users => :environment do
    User.create(name:"admin", password:"123qwe") if User.where(name:"admin").blank?
  end

end
