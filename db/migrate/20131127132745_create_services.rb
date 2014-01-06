class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string   "title"
      t.text     "description"
      t.integer  "sample_pic_id"
      t.datetime "created_at",     :null => false
      t.datetime "updated_at",     :null => false   
      t.string   "pdf_file_name"
      t.string   "pdf_content_type"
      t.integer  "pdf_file_size"
      t.datetime "pdf_updated_at"
    end
  end
  
end
