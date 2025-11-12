class AddClientNameToReviews < ActiveRecord::Migration[8.0]
  def change
    add_column :reviews, :client_name, :string
  end
end
