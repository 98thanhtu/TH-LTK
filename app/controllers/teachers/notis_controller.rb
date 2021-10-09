class Teachers::NotisController < ApplicationController
    before_action :authenticate_teacher!

    def index
        @notis = current_teacher.notis.order(created_at: :DESC).page(params[:page]).per(50)
    end

    def show
        notis = current_teacher.notis
        @noti = notis.find(params[:id])
    end

    def new
        @noti = Noti.new
    end

    def edit
        notis = current_teacher.notis
        @noti = notis.find(params[:id])
    end

    def create
        @noti = Noti.new(noti_params)
        @noti.teacher_id = current_teacher.id
        respond_to do |format|
            if @noti.save
                format.html { redirect_to teachers_noti_path(@noti), notice: "Tạo thông báo thành công." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        notis = current_teacher.notis
        @noti = notis.find(params[:id])
        respond_to do |format|
            if @noti.update(noti_params)
                format.html { redirect_to teachers_noti_path(@noti), notice: "Cập nhật thông báo thành công." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        notis = current_teacher.notis
        @noti = notis.find(params[:id])
        @noti.destroy
        respond_to do |format|
            format.html { redirect_to teachers_notis_url, notice: "Xóa thông báo thành công." }
        end
    end

    private

    def noti_params
        params.require(:noti).permit(:teacher_id, :title, :content, :is_read)
    end
end
