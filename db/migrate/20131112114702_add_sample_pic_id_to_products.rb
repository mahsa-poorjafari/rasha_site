class AddSamplePicIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sample_pic_id, :integer
  end
end
