class RentalsController < ApplicationController
  before_action :authenticate_user!

def index
  @user = User.find(current_user)
  @rental = Rental.all
end

def all
  @user = User.find_by(session[:user_id])
  @rental = Rental.all.order('created_at DESC')
end

def policy
end

def confirmation
end

def show
  @user = User.find_by(session[:user_id])
  @rental = Rental.find(params[:id])
end

def new
  @user = User.find_by(session[:user_id])
  @rental = Rental.new
end

def create
    @user = User.find_by(session[:user_id])
    @rental = @user.rentals.create!(rental_params)
    @rental.user = current_user
    if @rental.save
      redirect_to rentals_confirmation_path
    else
      redirect_to new_user_rental_path
    end
end

def edit
  @user = User.find_by(session[:user_id])
  @rental = Rental.find(params[:id])
end

def update
  @user = User.find_by(session[:user_id])
  @rental = Rental.find(params[:id])
  @rental.update(rental_params)
  redirect_to user_rental_path(@user, @rental)
end

def destroy
  @user = User.find_by(session[:user_id])
  @rental = Rental.find(params[:id])
  @rental.destroy
  redirect_to rentals_all_path
end

private
def rental_params
  params.require(:rental).permit(:name, :staff, :email, :phone, :item, :daterental)
end

end
