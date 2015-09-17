class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :create_users, :emaile, :email
  end
end
