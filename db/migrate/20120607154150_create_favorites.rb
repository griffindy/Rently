class CreateFavorites < ActiveRecord::Migration
  def up
    create_table :favorites do |t|
      t.references :apartment
      t.references :tenant
    end
  end

  def down
    drop_table :favorites
  end
end
