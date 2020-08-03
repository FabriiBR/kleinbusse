class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :assignature, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
