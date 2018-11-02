class FoodsController <ApplicationController

  def index
    @foods = Food.all
    render json: @foods
  end

  def create
    # byebug
    @food = Food.find_or_create(params[:id])
    if @food.valid?
      render json: @food
    else
      render json: @food.errors
    end
  end


end
