class GroceryController < ApplicationController
  # GET actions
  def new
    @item = Grocery.new
  end
  def index
    @list = Grocery.all
  end
  def edit
    @item = Grocery.find(params[:id])
  end
  def show
    @item = Grocery.find(params[:id])
  end

  # POST actions
  def create
    params.permit!
    @item = Grocery.new(params[:grocery])
    if @item.save
      render action: :show
    else
      render action: :new
    end
  end
  def destroy_all
    Grocery.destroy_all
    redirect_to action: :index
  end
  def destroy
    Grocery.where(id: params[:id]).destroy_all
    redirect_to action: :index
  end
end
