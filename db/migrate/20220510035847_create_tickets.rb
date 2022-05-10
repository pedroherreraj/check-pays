class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.date :ticket_date
      t.string :ticket_type
      t.string :ticket_status
      t.string :ticket_amount
      t.references :payment, foreign_key: true
      t.references :student, foreign_key: true
      t.timestamps
    end
  end
end
