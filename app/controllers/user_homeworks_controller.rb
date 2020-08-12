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
      redirect_to homework_user_homeworks_path(@homework)
    else
      render homework_path(@homework)
    end
  end

  def update
    @uh = UserHomework.find(params[:id])
    @uh.update(user_params)
    redirect_to homework_path(@uh.homework_id)
  end

  private

  def user_params
    params.require(:user_homework).permit(:file, :user_answer)
  end
end
