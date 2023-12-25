class ChangeColumnTypeInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :profile, nil
    change_column :users, :profile, :text
  end
end