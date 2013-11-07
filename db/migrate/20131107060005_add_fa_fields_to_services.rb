class AddFaFieldsToServices < ActiveRecord::Migration
  def change
    add_column :services, :title_fa, :string
    add_column :services, :description_fa, :string
  end
end
