class AddImageUriToBusinessCards < ActiveRecord::Migration
  def change
    add_column :business_cards, :imageuri, :string 
  end
  
end
