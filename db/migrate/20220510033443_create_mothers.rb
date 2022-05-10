class CreateMothers < ActiveRecord::Migration[6.0]
  def change
    create_table :mothers do |t|
      t.string :first_name
      t.string :last_name
      t.string :last_maiden_name
      t.string :email
      t.string :identifier
      t.timestamps
    end
  end
end
