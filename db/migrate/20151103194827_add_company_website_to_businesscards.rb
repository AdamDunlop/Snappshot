class AddCompanyWebsiteToBusinesscards < ActiveRecord::Migration
  def change
    add_column :business_cards, :company_website, :string

  end
end
