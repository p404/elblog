# CreateBootsyImage
# Create images table for uploading images gem bootsy
class CreateBootsyImages < ActiveRecord::Migration
  def change
    create_table :bootsy_images do |t|
      t.string :image_file
      t.references :image_gallery
      t.timestamps null: true
    end
  end
end
