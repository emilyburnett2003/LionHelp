class AddVendorIdToServices < ActiveRecord::Migration[8.0]
  def change
    add_column :services, :vendor_id, :integer
  end
end
