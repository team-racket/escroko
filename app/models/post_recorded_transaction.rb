class PostRecordedTransaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :account

  def to_s
    "#{label} (#{category}) - #{amount} #{account.currency.symbol}"
  end
end
