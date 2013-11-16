class AddSamplePicIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :sample_pic_id, :integer
  end
end
