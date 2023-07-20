class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|

      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :review, null: false
      t.integer :rate, null: false
      t.string :category, null: :false

      t.timestamps
    end
  end
end
