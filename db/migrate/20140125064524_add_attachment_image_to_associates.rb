class AddAttachmentImageToAssociates < ActiveRecord::Migration
  def self.up
    change_table :associates do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :associates, :image
  end
end
