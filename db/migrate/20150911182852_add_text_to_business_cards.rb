class AddTextToBusinessCards < ActiveRecord::Migration
  def change
    add_column :business_cards, :ocr_text, :string
  end
end
