class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :poster

      t.timestamps
    end
  end
end
