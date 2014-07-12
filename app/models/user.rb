class User < ActiveRecord::Base
  belongs_to :currency

  def to_s
    "#{first_name} #{last_name}"
  end
end
