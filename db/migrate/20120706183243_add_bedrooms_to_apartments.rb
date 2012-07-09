class AddBedroomsToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :bedrooms, :integer
  end
end
