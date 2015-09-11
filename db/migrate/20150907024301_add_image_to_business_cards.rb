class AddImageToBusinessCards < ActiveRecord::Migration
  def change
    add_column :business_cards, :image, :string 
  end
end
