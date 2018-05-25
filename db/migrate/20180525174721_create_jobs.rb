class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :bfcy_id
      t.integer :claim_id
      t.integer :status, default: 0
      t.integer :tx_id
      t.datetime :submitted_at

      t.timestamps null: false
    end

    add_index :jobs, :bfcy_id
    add_index :jobs, :claim_id
    add_index :jobs, :status
    add_index :jobs, :tx_id
  end
end