class Ability
  include CanCan::Ability

  def initialize(user)

    can [:update, :destroy], Rental do |rental|
      user.id == rental.user_id
    end


  end
end
