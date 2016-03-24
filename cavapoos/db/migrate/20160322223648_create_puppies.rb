class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :pic
      t.text :description
      t.float :price

      t.timestamps null: false
    end
  end
end
