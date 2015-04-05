class AddYearIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :year_id, :integer
    add_index :users, :year_id
  end
end
