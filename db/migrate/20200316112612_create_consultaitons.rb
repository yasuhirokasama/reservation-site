class CreateConsultaitons < ActiveRecord::Migration[5.2]
  def change
    create_table :consultaitons do |t|
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
    # 以下、indexを張るカラム
    add_index :consultaitons, [:visit_at, :type]
    add_index :consultaitons, :visit_at
    add_index :consultaitons, :type
  end
end
