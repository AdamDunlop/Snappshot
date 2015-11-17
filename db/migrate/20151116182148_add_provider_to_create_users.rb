class AddProviderToCreateUsers < ActiveRecord::Migration
  def change
    add_column :create_users, :provider, :string
  end
end
