class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :details
      t.references :tea, foreign_key: true

      t.timestamps
    end
  end
end
