class SalesController < ApplicationController

  before_action :set_sale, only: [:show]
 #before_action :authorize_sale

  def new
    @sale = Sale.new
    authorize @sale
  end

  def show
    authorize @sale
  end

  def create
    # @buyer = current_user
    @sale = Sale.new
    @product = Product.find(params[:product_id])
    @sale.user = current_user
    @sale.product = @product
    authorize @sale
    if @sale.save
      @product.update(sold: true)
      redirect_to sale_path(@sale)
    end

  end

  private

  # def authorize_sale
  #   authorize @sale
  # end

  def set_sale
    @sale = Sale.find(params[:id])
  end

end
