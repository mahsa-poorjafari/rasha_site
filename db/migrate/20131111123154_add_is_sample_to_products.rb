class AddIsSampleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_sample, :integer
  end
end
