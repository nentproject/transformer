class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :email
      t.string :qtum_address
      t.string :message
      t.string :signature

      t.timestamps null: false
    end

    add_index :claims, :qtum_address
  end
end