class ItemsController < ApplicationController
  before_action :authenticate_user!

def index
  @items = Item.all
end

def show
  @items = Item.all
  @item = Item.find(params[:id])
  @user = current_user
  @rental = Rental.new
end

def new
  @user = current_user
  @rental = Rental.new
  @item = Item.new
  authorize! :create, @item
end

def create
  @item = Item.create!(item_params)
  authorize! :create, @item
  if @item.save
  redirect_to item_path(@item)
else
  redirect_to new_item_path
end
end

def edit
  @user = User.find_by(session[:user_id])
  @item = Item.find(params[:id])
  authorize! :update, @item
end

def update
  @user = User.find_by(session[:user_id])
  @item = Item.find(params[:id])
  authorize! :update, @item
  @item.update(item_params)
  redirect_to item_path(@item)
end

def destroy
    @item = Item.find(params[:id])
    authorize! :destroy, @item
    @item.destroy
    redirect_to items_path
end

private
def item_params
  params.require(:item).permit(:name, :condition, :quantity, :photo_url)
end

end
