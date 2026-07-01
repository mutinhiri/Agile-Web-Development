module Itemizable
  extend ActiveSupport::Concern

  included do
    has_many :line_items, dependent: :destroy
  end

  def total_price
    line_items.sum(&:total_price)
  end
end