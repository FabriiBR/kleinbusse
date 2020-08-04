class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.bigint :lesson_id, null: false, foreign_key: true
      t.string :state
      t.string :description
      t.bigint :student_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
