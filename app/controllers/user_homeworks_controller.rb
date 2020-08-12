class UserHomeworksController < ApplicationController
  # STATUS = %w[pendiente enviado aprobado corregir]

  def index
    @assignatures = current_user.assignatures
    @user_homeworks_total = current_user.user_homeworks
    @user_homeworks = current_user.user_homeworks.pending
  end  

  def create
    @homework = Homework.find(params[:homework_id])
    @uh = UserHomework.new(user_params)
    @uh.status = "pendiente"
    @uh.student = current_user
    @uh.homework = @homework
    if @uh.save!
      flash[:notice] = 'Subiste tu archivo!'
    else
      flash[:notice] = 'No subiste un archivo!'
    end
    redirect_to homework_user_homeworks_path(@homework)
  end

  def update
    @uh = UserHomework.find(params[:id])
    if params[:user_homework].present?
      @uh.status = "enviado"
      @uh.update(user_params)
      redirect_to homework_path(@uh.homework_id)
      flash[:notice] = 'Subiste tu archivo!'
      return
    else
      redirect_to homework_path(@uh.homework_id)
      flash[:notice] = 'No subiste un archivo!'
    end
  end

  private

  def user_params
    params.require(:user_homework).permit(:file, :user_answer)
  end
end
