class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :eventable_type
      t.string :eventable_id
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
