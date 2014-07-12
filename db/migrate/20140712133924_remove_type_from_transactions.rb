class RemoveTypeFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :type
    remove_column :post_recorded_transactions, :type
  end
end
