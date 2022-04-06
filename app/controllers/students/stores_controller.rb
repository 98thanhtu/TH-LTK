class Students::StoresController < ApplicationController
  before_action :authenticate_student!

  def index
    @products = my_teacher.products.order(created_at: :DESC).page(params[:page]).per(50)
  end

  def show
    products = my_teacher.products
    @product = products.find(params[:id])
  end

  def edit
    product = my_teacher.products.find(params[:id])
    booking = Booking.new(
      student_id: current_student.id,
      teacher_id: my_teacher.id,
      product_id: product.id,
      price: product.price
    )
    if product.quantity >  0
      if current_student.avg_mark >= product.price
        if booking.save
          product.quantity -= 1
          product.save
          current_student.avg_mark -= booking.price
          current_student.save
          redirect_to students_bookings_path
        end
      else
        redirect_to edit_students_store_path
      end
    else
      redirect_to edit_students_store_path
    end
  end

  private

    def my_teacher
      Teacher.find_by(id: current_student.teacher_id)
    end
end