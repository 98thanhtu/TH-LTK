class Students::NotisController < ApplicationController
  before_action :authenticate_student!, only: %w[index show]

  def index
    binding.pry
    current_student = warden.authenticate(scope: :student)
    @notis = Noti.all
  end

  def show
    @noti = Noti.find(params[:id])
  end
end
