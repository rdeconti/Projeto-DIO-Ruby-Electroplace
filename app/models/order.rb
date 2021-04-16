class Order < ApplicationRecord
  belongs_to :user
  has_many :items, class_name: "OrderItem"

  scope :cart, -> { where(paid_at: nil) }
  scope :finished, -> { where.not(paid_at: nil) }

  def total
    items.sum(:price)
  end
end
