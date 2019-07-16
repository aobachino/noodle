class AddCategoryToMenus < ActiveRecord::Migration[5.1]
  def change
  	# category_idを追加する
    add_reference :menus, :category, foreign_key: true
  end
end
