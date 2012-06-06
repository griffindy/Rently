class CreateLandlordTable < ActiveRecord::Migration
  def up
    create_table :landlords do |t|
      t.string :name
      t.string :email
    end
  end

  def down
  end
end
