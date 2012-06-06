class CreateApartments < ActiveRecord::Migration
  def up
    create_table :apartments do |t|
      t.string :address
      t.integer :rent
      t.belongs_to :landlord
    end
  end

  def down
    drop_table :apartments
  end
end
