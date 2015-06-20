class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end

  def new
  end

  def edit
    if current_user != product.user
      redirect_to category_product_url(category, product)
      flash[:error] = 'You are not allowed to edit this product.'
    end
  end

  def create
    self.product = Product.new(product_params)
    review_user = current_user
    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if current_user == product.user
      if self.product.update(product_params)
        redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to category_product_url(category, product)
      flash[:error] = 'You are not allowed to edit this product.'
    end
  end

  # DELETE /products/1
  def destroy
    if current_user == product.user
      product.destroy
      redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
    else
      render action: 'edit', error: 'You are not allowed to destroy this product.'
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id, :product_image)
  end
end
