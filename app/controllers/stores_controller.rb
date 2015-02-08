class StoresController < ApplicationController
  before_action :find_store, only:[:destroy, :show, :edit, :update]

  def index
    @stores = Store.all
  end

  def destroy
    @store.destroy
    flash[:notice] = "已刪除商店"
    redirect_to stores_path
  end

  def show
  end

  def edit
  end

  def update
    if @store.update(store_params)
      flash[:notice] = "商店更新成功"
      redirect_to stores_path
    else
      render :edit
    end
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      flash[:notice] = "成功新增商店"
      redirect_to stores_path
    else
      render :new
    end
  end

  def new
    @store = Store.new
  end

  private
  def store_params
    params.require(:store).permit(:name, :adress, :tel)
  end

  def find_store
    @store = Store.find_by(id: params[:id])
  end
end
