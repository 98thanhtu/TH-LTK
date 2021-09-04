class StudentsController < ApplicationController
    before_action :authenticate_student!

    def edit
        @student = current_student
    end

    def update
        @student = current_student
        if @student.update(student_params)
            redirect_to root_path, notice: 'Profile was successfully updated.'
        else
            render :edit
        end
    end

    def show
        @student = current_student
    end

    private

    def student_params
        params.require(:student).permit(:phone, :address, :gender, :avatar)
    end
end
