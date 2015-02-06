class Store < ActiveRecord::Base
  belongs_to :user

  has_many :warehouses
  has_many :products, through: :warehouses

end
