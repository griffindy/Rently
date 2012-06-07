class AddCatsDogsToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :cats, :boolean
    add_column :apartments, :dogs, :boolean
  end
end
