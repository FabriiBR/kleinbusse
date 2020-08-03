class CreateBatches < ActiveRecord::Migration[6.0]
  def change
    create_table :batches do |t|
      t.string :grade
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
