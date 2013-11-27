class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string   "title"
      t.text     "page_html"  
      t.datetime "created_at",   :null => false
      t.datetime "updated_at",   :null => false    
    end
  end
end
