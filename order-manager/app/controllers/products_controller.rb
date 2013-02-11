class ProductsController < ApplicationController
  respond_to :json
  
  def index
    render :json => Product.find(:all)
  end

  def show
    render :json => Product.find(params[:id])
  end

  def create
    save(Product.new)
  end

  private

  def save(product)
    product.update_attributes!(params[:product])
    render :json => Product.where(params[:name]).first
  end
end
