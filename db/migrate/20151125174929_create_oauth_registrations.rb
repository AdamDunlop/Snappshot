class CreateOauthRegistrations < ActiveRecord::Migration
  def change
    create_table :oauth_registrations do |t|
      t.references :user, index: true, foreign_key: true
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
end
