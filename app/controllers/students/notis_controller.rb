class Students::NotisController < ApplicationController
  before_action :authenticate_student!

  def index
    # binding.pry
    current_student = warden.authenticate(scope: :student)
    current_class_id = current_student.teacher_id
    @notis = Noti.where(teacher_id: current_class_id)
  end

  def show
    @noti = Noti.find(params[:id])
  end
end
