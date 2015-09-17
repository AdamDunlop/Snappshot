class CreateCreateUsers < ActiveRecord::Migration
  def change
    create_table :create_users do |t|
      t.string :name
      t.string :emaile
      t.string :password

      t.timestamps null: false
    end
  end
end
