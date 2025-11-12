class RemovePosterFromServices < ActiveRecord::Migration[8.0]
  def change
    remove_column :services, :poster, :string
  end
end
