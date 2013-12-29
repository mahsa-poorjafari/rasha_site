class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string   "name"
      t.text     "description"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
      
      
    end
  end
end
