class CreateAssignatures < ActiveRecord::Migration[6.0]
  def change
    create_table :assignatures do |t|
      t.string :name
      t.bigint :teacher, null: false, foreign_key: true
      t.references :batch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
