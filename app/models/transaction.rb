class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :post_recorded_transaction
end
