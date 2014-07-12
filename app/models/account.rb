class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :currency
  has_many :transactions

  def to_s
    "#{label} (#{currency.symbol})"
  end
end
