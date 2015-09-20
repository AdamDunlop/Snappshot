class PasswordColumn < ActiveRecord::Migration
  def change
    rename_column :create_users, :password, :password_digest

  end
end
