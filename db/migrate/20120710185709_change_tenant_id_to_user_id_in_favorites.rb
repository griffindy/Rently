class ChangeTenantIdToUserIdInFavorites < ActiveRecord::Migration
  def change
    rename_column :favorites, :tenant_id, :user_id
  end
end
