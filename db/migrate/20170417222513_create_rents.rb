class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :image
      t.decimal :deposit
      t.date :start
      t.date :finish
      t.string :totald
      t.decimal :price
      t.decimal :total

      t.timestamps null: false
    end
  end
end
