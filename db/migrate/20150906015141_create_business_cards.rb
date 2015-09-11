class CreateBusinessCards < ActiveRecord::Migration
  def change
    create_table :business_cards do |t|
      t.string :name
      t.string :company
      t.string :job_title
      t.string :phone
      t.string :email
      t.string :company_address

      t.timestamps null: false
    end
  end
end
