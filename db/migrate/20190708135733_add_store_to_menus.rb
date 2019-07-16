class AddStoreToMenus < ActiveRecord::Migration[5.1]
  def change
  	# store_idを追加する
    add_reference :menus, :store, foreign_key: true
  end
end
