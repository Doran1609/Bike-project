class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :specification
      t.string :image
      t.string :category
      t.decimal :price

      t.timestamps null: false
    end
  end
end
