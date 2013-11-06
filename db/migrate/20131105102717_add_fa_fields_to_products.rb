class AddFaFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title_fa, :string
    add_column :products, :description_fa, :string
  end
end
