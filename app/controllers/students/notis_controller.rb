class Students::NotisController < ApplicationController
  before_action :authenticate_student!

  def index
    current_class_id = current_student.teacher_id
    @notis = Noti.where(teacher_id: current_class_id)
  end

  def show
    current_class_id = current_student.teacher_id
    notis = Noti.where(teacher_id: current_class_id)
    @noti = notis.find(params[:id])
  end
end
