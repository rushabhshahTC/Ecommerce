class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :code
      t.float :discount
      t.date :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
