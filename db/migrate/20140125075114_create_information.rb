class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
