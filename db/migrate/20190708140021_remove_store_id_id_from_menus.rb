class RemoveStoreIdIdFromMenus < ActiveRecord::Migration[5.1]
  def change
  	remove_column :menus, :store_id_id, :string
  end
end
