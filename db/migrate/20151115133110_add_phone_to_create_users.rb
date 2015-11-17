class AddPhoneToCreateUsers < ActiveRecord::Migration
  def change
    add_column :create_users, :phone_number, :string
  end
end
