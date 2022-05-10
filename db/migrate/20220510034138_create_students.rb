class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :last_maiden_name
      t.string :grade
      t.references :mother, foreign_key: true, optional: true
      t.references :father, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
