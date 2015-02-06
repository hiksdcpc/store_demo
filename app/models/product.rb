class Product < ActiveRecord::Base
  has_many :warehouses
  has_many :stores, through: :warehouses

  validates :name, presence: true, begin_with_ruby: true

  scope :available, -> { where(is_available: true) }
  scope :price_over, ->(p) { available.where(["price > ?", p]).order('id') }

end
