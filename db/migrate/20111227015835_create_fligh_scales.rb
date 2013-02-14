class CreateFlighScales < ActiveRecord::Migration
  def change
    create_table :fligh_scales do |t|
      t.text :scale_text
      t.integer :year
      t.integer :month
      t.string :company
      t.string :post

      t.timestamps
    end
  end
end
