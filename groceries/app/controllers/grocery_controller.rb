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
end
