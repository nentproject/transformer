class CreateBfcies < ActiveRecord::Migration
  def change
    create_table :bfcies do |t|
      t.string :qtum_address
      t.integer :amount, limit: 8

      t.timestamps null: false
    end

    add_index :bfcies, :qtum_address
  end
end