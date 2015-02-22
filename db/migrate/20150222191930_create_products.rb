class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.boolean :requires_id
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
