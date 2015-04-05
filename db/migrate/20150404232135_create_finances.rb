class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.string :audit
      t.decimal :cash_amount
      t.decimal :check_amount
      t.decimal :check_number
      t.integer :data_entry
      t.string :note
      t.string :supporter_name

      t.timestamps
    end
  end
end
