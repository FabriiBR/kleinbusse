class ChangeColumnNameTypeOfHomework < ActiveRecord::Migration[6.0]
  def change
    rename_column :homeworks, :type, :type_off
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
