class Teachers::ProductsController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @products = current_teacher.products
    @products = @products.order(created_at: :DESC).page(params[:page]).per(20)
  end

  def show
    products = current_teacher.products
    @product = products.find(params[:id])
  end

  def edit
    products = current_teacher.products
    @product = products.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.teacher_id = current_teacher.id
    respond_to do |format|
      if @product.save
        format.html { redirect_to teachers_product_path(@product), notice: "Tạo sản phẩm thành công." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to teachers_product_path(@product), notice: "Cập nhật sản phẩm thành công." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
        format.html { redirect_to teachers_products_url, notice: "Xóa sản phẩm thành công." }
    end
  end

  private

  def product_params
      params.require(:product).permit(:id, :name, :price, :description, :image, :remove_image)
  end
end