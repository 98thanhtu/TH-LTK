class TeachersController < ApplicationController
  before_action :authenticate_teacher!

  def edit
      @teacher = current_teacher
    end
  
    def update
      @teacher = current_teacher
      if @teacher.update(teacher_params)
        redirect_to root_path, notice: 'Profile was successfully updated.'
      else
        render :edit
      end
    end
  
    private
    
    def teacher_params
      params.require(:teacher).permit(:phone, :gender, :avatar, :address)
    end
end
