class Students::NotisController < ApplicationController
  before_action :authenticate_student!

  def index
    current_class_id = current_student.teacher_id
    @notis = Noti.where(teacher_id: current_class_id).order(created_at: :DESC).page(params[:page]).per(20)
  end

  def show
    current_class_id = current_student.teacher_id
    notis = Noti.where(teacher_id: current_class_id)
    @noti = notis.find(params[:id])
  end
end
