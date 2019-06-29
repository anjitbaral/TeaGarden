class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :origin
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
