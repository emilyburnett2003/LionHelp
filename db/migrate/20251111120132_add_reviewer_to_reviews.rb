class AddReviewerToReviews < ActiveRecord::Migration[8.0]
  def change
    add_column :reviews, :reviewer, :string
  end
end
