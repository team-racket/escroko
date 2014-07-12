class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :label
      t.string :symbol
      t.string :position

      t.timestamps
    end
    add_index :currencies, :label, unique: true
  end
end
