class UserHomeworksController < ApplicationController
  # STATUS = %w[pendiente enviado aprobado corregir]

  def create
    @user = User.find(current_user)
    @homework = Homework.find(params[:homework_id])
    @uh = UserHomework.new(status: "pending", file: user_params)
    @uh.user = @user
    @uh.homework = @homework
    if @uh.save!
      redirect_to homework_path(@homework)
    else
      render user_homework_path(@homework)
    end
  end

  def update
    @uh = UserHomework.find(params[:id])
    @uh.update
  end

  private

  def user_params
    params.require(:user_homework).permit(:file)
  end
end
