class AddPdfToService < ActiveRecord::Migration
  def change
    add_column :services, :pdf, :string
  end
end
