class AddBathroomsToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :bathrooms, :integer
  end
end
