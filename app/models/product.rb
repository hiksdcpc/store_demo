class Product < ActiveRecord::Base
  has_many :warehouses
  has_many :stores, through: :warehouses

  scope :available, -> { where(is_available: true).order("id DESC").limit(3)  }

  #def self.available
    #where(is_available: true)
  #end
end
