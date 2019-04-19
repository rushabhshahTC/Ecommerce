class CreateProductOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :product_options do |t|
      t.string :size
      t.string :color
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
