class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text     "description"
      t.integer  "service_id"
      t.integer  "product_id"
      t.datetime "created_at",         :null => false
      t.datetime "updated_at",         :null => false
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      
     
    end
  end
end
