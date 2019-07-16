class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      # カラム
      t.string :name,       null: false, default: ""
      t.string :address,    null: false, default: ""
      t.string :station,                 default: ""
      t.string :picture,                 default: ""
      t.integer :status,    null: false, default: 0
      t.string :fromTo,                  default: ""

      t.timestamps
    end
    add_index :stores, [:name, :address], unique: true
  end
end
