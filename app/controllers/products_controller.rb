require 'byebug'
class ProductsController < ApplicationController

  def index
    @cart = cart
    @product = Product.new
  end

  def add
    cart << params[:name]
    redirect_to "/"
  end
end
