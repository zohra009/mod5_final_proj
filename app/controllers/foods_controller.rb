class FoodsController <ApplicationController

  def index
    @foods = Food.all
    render json: @foods
  end

  def show
    @food = Food.find(params[:id])
    render json: @food
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
