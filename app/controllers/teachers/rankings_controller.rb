class Teachers::RankingsController < ApplicationController
    before_action :authenticate_teacher!

    def index
        @students = current_teacher.students.order(avg_mark: :DESC)
    end

    def update
        @students = current_teacher.students.order(avg_mark: :DESC)
    end
end
