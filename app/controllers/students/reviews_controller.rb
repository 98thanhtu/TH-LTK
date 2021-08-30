class Students::ReviewsController < ApplicationController
  before_action :authenticate_student!, only: %w[index show]

  def index
    # binding.pry
    current_student = warden.authenticate(scope: :student)
    @reviews = Review.where(student_id: current_student.id)
  end

  def show
    @review = Review.find(params[:id])
  end
end
