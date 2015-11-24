class AddFaxWorkPhoneNumberToBusinessCards < ActiveRecord::Migration
  def change
    add_column :business_cards, :fax_number, :string
    add_column :business_cards, :work_number, :string
  end
end
