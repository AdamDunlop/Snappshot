class AddUserIdToBusinessCards < ActiveRecord::Migration
  def change
    add_column :business_cards, :create_user_id, :integer
  end
end
