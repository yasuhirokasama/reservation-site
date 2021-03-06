class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.string :cell_number
      t.string :tel_number
      t.string :email
      t.date :birthday
      t.integer :sex
      t.integer :visit_type, null: false
      t.datetime :visit_at, null: false

      t.timestamps
    end
    add_index :consultations, [:visit_at, :visit_type]
    add_index :consultations, :visit_at
    add_index :consultations, :visit_type
	end
end
