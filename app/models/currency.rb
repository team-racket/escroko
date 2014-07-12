class Currency < ActiveRecord::Base
  def to_s
    "#{label} (#{symbol})"
  end
end
