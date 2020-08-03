class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :string
    add_column :users, :institute, :string
    add_column :users, :birthday, :datetime
    add_column :users, :available, :boolean
    add_reference :users, :batch, null: false, foreign_key: true
  end
end
