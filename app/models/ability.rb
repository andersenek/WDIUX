class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin? # Admin user
          can :manage, :all
        else # Non-admin user
          can :read, :all
        end
        
    can [:update, :destroy], Rental do |rental|
      user.id == rental.user_id
    end


  end
end
