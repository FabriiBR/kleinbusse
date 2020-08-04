class ChangeColumnTypeToHomework < ActiveRecord::Migration[6.0]
  def change
    change_column :homeworks, :type, 'integer USING CAST(type AS integer)'
  end
end
