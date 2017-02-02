class RemoveImageToGallery < ActiveRecord::Migration
  def change
    remove_column :galleries, :image, :string
  end
end
