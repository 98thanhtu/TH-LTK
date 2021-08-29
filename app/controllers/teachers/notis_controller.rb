class Teachers::NotisController < ApplicationController
    before_action :authenticate_teacher!, only: %w[ create edit new update destroy ]

    def index
        @notis = Noti.all
    end

    def show
        @noti = Noti.find(params[:id])
    end

    def new
        @noti = Noti.new
    end

    def edit
        @noti = Noti.find(params[:id])
    end

    def create
        @noti = Noti.new(noti_params)
        respond_to do |format|
            if @noti.save
                format.html { redirect_to teachers_noti_path(@noti), notice: "Tạo thông báo thành công." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        @noti = Noti.find(params[:id])
        respond_to do |format|
            if @noti.update(noti_params)
                format.html { redirect_to teachers_noti_path(@noti), notice: "Cập nhật thông báo thành công." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @noti = Noti.find(params[:id])
        @noti.destroy
        respond_to do |format|
            format.html { redirect_to teachers_notis_url, noti: "Xóa thông báo thành công." }
        end
    end

    private

    def noti_params
        params.require(:noti).permit(:teacher_id, :title, :content, :course_id, :is_read)
    end

end
