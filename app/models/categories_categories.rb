class CategoriesCategories < ActiveRecord::Base
  belongs_to :category
  belongs_to :parent_category
end
