class CreatePhotoTable < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.references :apartment
    end
  end

  def down
    drop_table :photos
  end
end
