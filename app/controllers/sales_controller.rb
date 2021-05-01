class SalesController < ApplicationController

  before_action :set_sale, only: [:show]

  def new
    @sale = Sale.new
  end

  def show
  end

  def create
    # @buyer = current_user
    @sale = Sale.new
    @product = Product.find(params[:product_id])
    @sale.user = current_user
    @sale.product = @product
    if @sale.save
      redirect_to sale_path(@sale)
    end

  end

  private

  def set_sale
    @sale = Sale.find(params[:id])
  end

end
