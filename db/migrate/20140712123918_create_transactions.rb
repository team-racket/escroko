class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :account, index: true
      t.references :category, index: true
      t.references :post_recorded_transaction, index: true
      t.text :commentary
      t.string :type
      t.float :amount
      t.date :date

      t.timestamps
    end
  end
end
