class AddFaFiledsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :title_fa, :string
    add_column :pages, :page_html, :text
    remove_column :pages, :page_html_en
  end
end
