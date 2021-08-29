class Students::ReviewsController < ApplicationController
  before_action :authenticate_student!, only: %w[index show]

  def show
    @reviews = Review.all
  end

  def index
    @review = Review.find(params[:id])
  end
end
