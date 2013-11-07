class AddFaFieldsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :description_fa, :string
  end
end
