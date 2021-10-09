class Students::ReviewsController < ApplicationController
  before_action :authenticate_student!

  def index
    @reviews = current_student.reviews.order(created_at: :DESC).page(params[:page]).per(50)
  end

  def show
    reviews = current_student.reviews
    @review = reviews.find(params[:id])
  end
end
