class ChangeZipToIntegerInApartments < ActiveRecord::Migration
  def up
    change_column :apartments, :zip, :string
  end

  def down
    change_column :apartments, :zip, :integer
  end
end
