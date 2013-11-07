namespace :db do
  desc "creates default pages -> about us and contact us"
  task :add_default_pages => :environment do
    Page.create(:title => "About us");
    Page.create(:title => "Contact us")
  end

end