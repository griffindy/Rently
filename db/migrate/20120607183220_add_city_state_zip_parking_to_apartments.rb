class AddCityStateZipParkingToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :city, :string
    add_column :apartments, :state, :string
    add_column :apartments, :zip, :integer
    add_column :apartments, :parking, :boolean
  end
end
