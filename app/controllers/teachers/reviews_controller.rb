class Teachers::ReviewsController < ApplicationController
    before_action :authenticate_teacher!

    def index
        current_teacher = warden.authenticate(scope: :teacher)
        @reviews = Review.where(teacher_id: current_teacher.id)
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def edit
        @review = Review.find(params[:id])
    end

    def create
        @review = Review.new(review_params)
        respond_to do |format|
            if @review.save
                format.html { redirect_to teachers_review_path(@review), notice: "Tạo thông báo thành công." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        @review = Review.find(params[:id])
        respond_to do |format|
            if @review.update(review_params)
                format.html { redirect_to teachers_review_path(@review), notice: "Cập nhật thông báo thành công." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        respond_to do |format|
            format.html { redirect_to teachers_reviews_url, notice: "Xóa thông báo thành công." }
        end
    end

    private

    def review_params
        params.require(:review).permit(:teacher_id, :title, :content, :student_id)
    end

end
