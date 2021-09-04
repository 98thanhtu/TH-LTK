class Teachers::StudentsController < ApplicationController
    before_action :authenticate_teacher!

    def index
        @students = current_teacher.students
    end

    def show
        @student = Student.find(params[:id])
    end
    
    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        @student.avg_mark = @student.good_mark * 2 - @student.bad_mark
        respond_to do |format|
            if @student.update(student_params)
                format.html { redirect_to teachers_student_path(@student), notice: "Cập nhật điểm thành công." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    def student_params
        params.require(:student).permit(:good_mark, :bad_mark, :avg_mark)
    end
end
