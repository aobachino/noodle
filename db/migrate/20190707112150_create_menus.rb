class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|

    	# カラム
    	t.string :name,      null: false, default:""
    	t.integer :price,    null: false, default: 0
    	t.string :picture,                default:""


      t.timestamps
    end
  end
end
