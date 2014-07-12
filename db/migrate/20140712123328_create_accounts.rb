class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :user, index: true
      t.references :currency, index: true
      t.string :label
      t.float :default_amount
      t.boolean :default_account

      t.timestamps
    end
  end
end
