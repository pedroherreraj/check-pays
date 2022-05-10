class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :amount
      t.date :payment_date
      t.references :account, foreign_key: true
      t.timestamps
    end
  end
end
