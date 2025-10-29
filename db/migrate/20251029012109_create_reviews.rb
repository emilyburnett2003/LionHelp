class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :vendorId
      t.text :vendorName
      t.text :title
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
