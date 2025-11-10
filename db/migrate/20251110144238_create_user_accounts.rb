class CreateUserAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :user_accounts do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
