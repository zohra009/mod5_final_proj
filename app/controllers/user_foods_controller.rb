class UserFoodsController <ApplicationController

  def index
    @user_foods = UserFood.all
    render json: @user_foods
  end

end
