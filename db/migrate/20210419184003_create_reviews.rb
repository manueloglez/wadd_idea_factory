class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :idea, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rating
      t.text :description
      t.timestamps
    end
  end
end
