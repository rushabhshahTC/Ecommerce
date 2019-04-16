class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :city
      t.date :dob
      t.string :role
      t.string :state
      t.string :gender
      t.string :phone_number
      t.string :company_name
      t.string :owner_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
