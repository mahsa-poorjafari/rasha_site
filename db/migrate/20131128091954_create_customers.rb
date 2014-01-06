class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string   "name"
      t.text     "description"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      
      
    end
  end
end
