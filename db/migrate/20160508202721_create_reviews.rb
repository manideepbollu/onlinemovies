class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.float :rating
      t.integer :movie_id
      t.integer :user_id

      t.timestamps
    end
  end
end
