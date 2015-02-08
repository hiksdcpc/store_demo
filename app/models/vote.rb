class Vote < ActiveRecord::Base
  belongs_to :store, counter_cache: true
  belongs_to :user

  before_save :set_ip_address

  private
  def set_ip_address
    #self.ip_address = request.remote_ip
  end
end
