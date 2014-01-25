class CreateAssociates < ActiveRecord::Migration
  def change
    create_table :associates do |t|
      t.string :name

      t.timestamps
    end
  end
end
