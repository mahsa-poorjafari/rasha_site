class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string   "title"
      t.text     "description"
      t.integer  "sample_pic_id"
      t.datetime "created_at",     :null => false
      t.datetime "updated_at",     :null => false   
    end
  end
  
end
