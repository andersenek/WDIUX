class ItemsController < ApplicationController
  before_action :authenticate_user!
  
def index
  @items = Item.all
end

def show
  @item = Item.find(params[:id])
end

def new
  @item = Item.new
end

def create
  @item = Item.create!(item_params)
  if @item.save
  redirect_to item_path(@item)
else
  redirect_to new_item_path
end
end

def edit
  @user = User.find_by(session[:user_id])
  @item = Item.find(params[:id])
end

def update
  @user = User.find_by(session[:user_id])
  @item = Item.find(params[:id])
  @item.update(item_params)
  redirect_to item_path(@item)
end

def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
end

private
def item_params
  params.require(:item).permit(:name, :condition, :quantity, :photo_url)
end

end
