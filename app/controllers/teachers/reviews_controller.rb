class Teachers::ReviewsController < ApplicationController
    before_action :authenticate_teacher!

    def index
        @reviews = Review.where( teacher_id: current_teacher )
        @reviews = @reviews.order(created_at: :DESC).page(params[:page]).per(50)
    end

    def show
        reviews = Review.where( teacher_id: current_teacher )
        @review = reviews.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def edit
        reviews = Review.where( teacher_id: current_teacher )
        @review = reviews.find(params[:id])
    end

    def create
        @review = Review.new(review_params)
        respond_to do |format|
            if @review.save
                format.html { redirect_to teachers_review_path(@review), notice: "Tạo báo cáo thành công." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        reviews = Review.where( teacher_id: current_teacher )
        @review = reviews.find(params[:id])
        respond_to do |format|
            if @review.update(review_params)
                format.html { redirect_to teachers_review_path(@review), notice: "Cập nhật báo cáo thành công." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        respond_to do |format|
            format.html { redirect_to teachers_reviews_url, notice: "Xóa báo cáo thành công." }
        end
    end

    private

    def review_params
        params.require(:review).permit(:teacher_id, :title, :content, :student_id)
    end
end
