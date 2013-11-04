class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :page_title
      t.text :page_html_en
      t.text :page_html_fa

      t.timestamps
    end
  end
end
