class RentalsController < ApplicationController
  before_action :authenticate_user!

def index
  @user = User.find(current_user)
  @rental = Rental.all
end

def show
  @user = User.find_by(session[:user_id])
  @rental = Rental.all
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
      redirect_to user_rentals_path(@user)
    else
      redirect_to new_user_rental_path
    end
end

def edit
end

def update
end

def destroy
end

private
def rental_params
  params.require(:rental).permit(:name, :staff, :email, :phone, :item)
end

end
