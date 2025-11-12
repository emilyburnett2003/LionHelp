class AddVendorNameToServices < ActiveRecord::Migration[8.0]
  def change
    add_column :services, :vendor_name, :string
  end
end
