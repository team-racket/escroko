class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :label
      t.string :color
      t.references :user, index: true

      t.timestamps
    end
  end
end
