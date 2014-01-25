class AddDescriptionToAssociate < ActiveRecord::Migration
  def change
    add_column :associates, :description, :text
  end
end
