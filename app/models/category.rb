class Category < ActiveRecord::Base
  belongs_to :user

  def to_s
    label
  end
end
