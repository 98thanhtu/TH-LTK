class Students::StoresController < ApplicationController
  before_action :authenticate_student!

  def index
    @products = my_teacher.products.order(created_at: :DESC).page(params[:page]).per(20)
    @booking = Booking.new
  end

  def show
    products = my_teacher.products
    @product = products.find(params[:id])
  end

  def edit
    @products = my_teacher.products
    @product = @products.find(params[:id])
    @booking = Booking.new
    @booking.student_id = current_student.id
    @booking.teacher_id = my_teacher.id
    @booking.product_id = @product.id
    if current_student.avg_mark > @product.price
      if @booking.save
        current_student.avg_mark -= @product.price
        current_student.save
        redirect_to students_bookings_path
      end
    else
      redirect_to edit_students_store_path
    end
  end

  private

    def my_teacher
      Teacher.find(current_student.teacher_id)
    end
end