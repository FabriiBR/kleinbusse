class CreateUserHomeworks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_homeworks do |t|
      t.bigint :student_id, null: false, foreign_key: true
      t.references :homework, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
