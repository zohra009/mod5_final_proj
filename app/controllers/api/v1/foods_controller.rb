class Api::V1::FoodsController < ApplicationController
  def hello
    render json: { hello: 'hi' }
  end
end
