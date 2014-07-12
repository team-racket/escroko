class CreateCategoriesCategories < ActiveRecord::Migration
  def change
    create_table :categories_categories, :id => false do |t|
      t.references :category, index: true
      t.references :parent_category, index: true

      t.timestamps
    end
  end
end
