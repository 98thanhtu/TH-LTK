class Students::ReviewsController < ApplicationController
  before_action :authenticate_student!

  def index
    @reviews = current_student.reviews
  end

  def show
    reviews = current_student.reviews
    @review = reviews.find(params[:id])
  end
end
