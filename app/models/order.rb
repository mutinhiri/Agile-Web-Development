class Order
  include ActiveModel::Model

  attr_accessor :name, :email, :address

  validates :name, :email, :address, presence: true
end
