class AddFaFieldsToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :description_fa, :string
  end
end
