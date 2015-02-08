class Store < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :user

  has_many :warehouses
  has_many :products, through: :warehouses

  has_many :votes
  has_many :users, through: :votes

  def information
    "#{self.name} (地址：#{
    if self.adress.present?
      self.adress
    else
      '未填寫'
    end
    }, 電話：#{
    if self.tel.present?
      self.tel
    else
      '未填寫'
    end
    })"
  end
end
