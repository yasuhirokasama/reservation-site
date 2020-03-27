class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.string :name, null: false
      t.string :cell_number
      t.string :tel_number
      t.string :email
      t.date :birthday
      t.integer :sex
      t.integer :type, null: false
      t.datetime :visit_at, null: false

      t.timestamps
    end
    add_index :consultations, [:visit_at, :type]
    add_index :consultations, :visit_at
    add_index :consultations, :type
  end
end
