class AddOauthToCreateUsers < ActiveRecord::Migration
  def change
    add_column :create_users, :aouth_token, :string
    add_column :create_users, :oauth_expires_at, :datetime
  end
end
