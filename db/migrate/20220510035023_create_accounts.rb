class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :account
      t.string :bank
      t.references :father, foreign_key: true, optional: true
      t.references :mother, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
