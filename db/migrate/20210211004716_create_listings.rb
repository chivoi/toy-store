class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.references :category, null: false, foreign_key: true
      t.text :description
      t.integer :condition

      t.timestamps
    end
  end
end
