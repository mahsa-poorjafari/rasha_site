class AddAttachmentPdfToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :pdf
    end
  end

  def self.down
    drop_attached_file :services, :pdf
  end
end
