class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.text :email
      t.text :message
      t.boolean :visited, :default => false
      t.string :phone

      t.timestamps
    end
  end
end
