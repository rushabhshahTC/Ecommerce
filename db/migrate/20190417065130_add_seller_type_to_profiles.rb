class AddSellerTypeToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :seller_type, :string
  end
end
