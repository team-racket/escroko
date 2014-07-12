class CreatePostRecordedTransactions < ActiveRecord::Migration
  def change
    create_table :post_recorded_transactions do |t|
      t.string :label
      t.float :default_amount
      t.text :commentary
      t.references :category, index: true
      t.string :type
      t.date :start_date
      t.date :end_date
      t.integer :day
      t.boolean :to_validate
      t.references :account, index: true

      t.timestamps
    end
  end
end
