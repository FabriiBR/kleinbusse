class AddLinkToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :link, :text
  end
end
