class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :nickName
      t.string :company
      t.string :post
      t.string :password

      t.timestamps
    end
  end
end
