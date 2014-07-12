class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :currency
  has_many :transactions
end
