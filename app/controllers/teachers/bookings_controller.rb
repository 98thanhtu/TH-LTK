class Teachers::BookingsController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @bookings = current_teacher.bookings.new_booking.order(created_at: :ASC).page(params[:page]).per(20)
  end

  def confirmed_bookings
    @bookings = current_teacher.bookings.confirmed.order(created_at: :ASC).page(params[:page]).per(20)
  end

  def confirm_booking
    @booking = current_teacher.bookings.find_by(id: params[:id])
    @booking.status = 2
    if @booking.save
      redirect_to teachers_bookings_url
    end
  end

  def edit
    bookings = current_teacher.bookings
    @booking = bookings.find_by(id: params[:id])
  end

  def update
    bookings = current_teacher.bookings
    @booking = bookings.find_by(id: params[:id])
    crt_student = @booking.student
    crt_student.avg_mark += @booking.product.price
    @booking.status = 4
    respond_to do |format|
      if @booking.update(booking_params)
        crt_student.save
        format.html { redirect_to teachers_bookings_path, notice: "Hủy yêu cầu mua hàng thành công." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def complete_booking
    @booking = current_teacher.bookings.find_by(id: params[:id])
    @booking.status = 3
    if @booking.save
      redirect_to confirmed_bookings_teachers_bookings_path
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:description)
  end
end