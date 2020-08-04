class CreateHomeworks < ActiveRecord::Migration[6.0]
  def change
    create_table :homeworks do |t|
      t.string :content
      t.string :answer
      t.string :type
      t.bigint :lesson_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
