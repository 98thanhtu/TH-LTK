class Students::BookingsController < ApplicationController
  before_action :authenticate_student!

  def index
    @bookings = current_student.bookings.where(status: "new_booking").or(current_student.bookings.where(status: "confirmed")).order(updated_at: :DESC)
  end

  def show
    bookings = current_student.bookings
    @booking = bookings.find(params[:id])
  end

  def historical_bookings
    @historical_bookings = current_student.bookings.where(status: "canceled").or(current_student.bookings.where(status: "completed")).order(updated_at: :DESC).page(params[:page]).per(50)
  end

  def destroy
    bookings = current_student.bookings
    @booking = bookings.find_by(id: params[:id])
    if @booking.destroy
      current_student.avg_mark += @booking.product.price
      current_student.save
      respond_to do |format|
        format.html { redirect_to students_bookings_url, notice: "Hủy mua hàng thành công." }
      end
    end
  end
end
