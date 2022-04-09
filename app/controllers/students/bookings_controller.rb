class Students::BookingsController < ApplicationController
  before_action :authenticate_student!

  def index
    @bookings = current_student.bookings.where(status: ["new_booking", "confirmed"]).order(updated_at: :DESC)
  end

  def show
    bookings = current_student.bookings
    @booking = bookings.find(params[:id])
  end

  def historical_bookings
    @historical_bookings = current_student.bookings.where(status: ["canceled", "completed"]).order(updated_at: :DESC).page(params[:page]).per(50)
  end

  def destroy
    booking = current_student.bookings.find_by(id: params[:id])
    product = Product.find_by(id: booking.product_id)
    if booking.destroy
      product.quantity += 1
      product.save
      current_student.avg_mark += booking.price
      current_student.save
      respond_to do |format|
        format.html { redirect_to students_bookings_url, notice: "Hủy mua hàng thành công." }
      end
    end
  end
end
