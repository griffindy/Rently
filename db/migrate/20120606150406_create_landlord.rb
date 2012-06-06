class CreateLandlord < ActiveRecord::Migration
  def up
    create_table :landlords do |t|
      t.string :name
      t.string :email
    end
  end

  def down
    drop_table :landlords
  end
end
