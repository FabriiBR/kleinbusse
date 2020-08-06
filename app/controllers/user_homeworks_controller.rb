class UserHomeworksController < ApplicationController
  # STATUS = %w[pendiente enviado aprobado corregir]

  def create
    @user = User.find(current_user)
    @homework = Homework.find(params[:homework_id])
    @uh = UserHomework.new(status: "pending", file: user_params)
    @uh.user = @user
    @uh.homework = @homework
    if @uh.save!
      redirect_to homeworks_path(@homework)
    else
      render homeworks_path(@homework)
    end
  end

  def update
    # @uh = UserHomework.find(params[:id])
    # @uh.update
    @user = User.find(current_user)
    @homework = Homework.find(params[:homework_id])
    @uh = UserHomework.new(status: "pending", file: user_params)
    @uh.user = @user
    @uh.homework = @homework
    if @uh.save!
      redirect_to homeworks_path(@homework)
    else
      render homeworks_path(@homework)
    end
  end

  private

  def user_params
    params.require(:user_homework).permit(:file)
  end
end
