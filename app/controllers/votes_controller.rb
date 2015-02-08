class VotesController < ApplicationController
  def create
    if user_signed_in?
      voted_store = Store.find_by(id: params[:store_id])
      if voted_store.nil?
        flash[:notice] = "查無此商家"
      else
        Vote.create(user: current_user,
                    store: voted_store,
                    ip_address: request.remote_ip)
        flash[:notice] = "投票成功!"
      end
    else
      flash[:notice] = '請先登入會員'
    end
    redirect_to stores_path
  end
end
