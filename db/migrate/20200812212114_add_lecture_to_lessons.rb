class AddLectureToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :lecure, :string
  end
end
