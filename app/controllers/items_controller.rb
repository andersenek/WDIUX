class ItemsController < ApplicationController

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
end

private
def item_params
  params.require(:item).permit(:name, :condition, :quantity, :photo_url)
end

end
