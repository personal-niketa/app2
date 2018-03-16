class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :supplier_id
      t.string :account_number
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
