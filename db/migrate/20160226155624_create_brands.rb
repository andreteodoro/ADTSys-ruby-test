class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :webmotors_id

      t.timestamps null: false
    end

    add_index :brands, :name
  end
end
