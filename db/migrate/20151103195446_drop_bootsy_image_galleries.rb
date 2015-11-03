class DropBootsyImageGalleries < ActiveRecord::Migration

  def up
    drop_table :bootsy_image_galleries
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
