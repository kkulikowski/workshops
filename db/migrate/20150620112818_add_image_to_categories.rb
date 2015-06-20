class AddImageToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :category_image_id, :string
  end
end
