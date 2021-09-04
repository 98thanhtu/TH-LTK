class Students::RankingsController < ApplicationController
    before_action :authenticate_student!

    def index
        teacher_id = current_student.teacher_id
        teacher = Teacher.find(teacher_id)
        @students = teacher.students.order(avg_mark: :DESC).limit(5)
    end
end
