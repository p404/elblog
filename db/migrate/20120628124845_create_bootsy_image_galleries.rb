# CreateBootsyImage
# Create linking table to uploading images bootsy
class CreateBootsyImageGalleries < ActiveRecord::Migration
  def change
    create_table :bootsy_image_galleries do |t|
      t.references :bootsy_resource, polymorphic: true
      t.timestamps null: true
    end
  end
end
