class ProductsController < ApplicationController

  def index
    @products = policy_scope(Product).order(created_at: :desc)
    #@products = Product.all
  end

  def new
    @product = Product.new
    authorize @product
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def create
    # associar o produto ao user
    @product = Product.new(product_params)
    # associar o produto ao user
    @product.user = current_user
    authorize @product

    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    authorize @product
    redirect_to product_path(@product)
  end

  def destroy
    authorize @product
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :category, :price, :image)
  end

end
