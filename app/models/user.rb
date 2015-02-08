class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :store

  has_many :votes
  has_many :stores, through: :votes

  def admin?
    self.email == 'eddie@5xruby.tw'
  end
end
