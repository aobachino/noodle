class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|

    	# カラム
    	t.string :name,    null: false ,default:""
      t.timestamps
    end
  end
end
