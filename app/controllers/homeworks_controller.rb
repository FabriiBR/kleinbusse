class HomeworksController < ApplicationController
  before_action :set_homework, only: %i[show :update]

  def index
    
    @assignature_homeworks = Homework.joins(:lesson).where(homeworks: {type_off: "homework"}).where("lessons.assignature_id =?",params[:assignature_id] ).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id, status: [ "pendiente", "corregir"]  }).group_by(&:lesson)

    @assignature_flashcards = Homework.joins(:lesson).where(homeworks: {type_off: "flashcard"}).where("lessons.assignature_id =?",params[:assignature_id] ).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id, status: [ "pendiente", "corregir"] }).group_by(&:lesson)

    @assignature = Assignature.find(params[:assignature_id])
    @user_homework = current_user.user_homeworks

    #@assignature_homeworks = Homework.joins(:lesson).where(homeworks: {type_off: "homework"}).where("lessons.assignature_id =?",params[:assignature_id] ).group_by(&:lesson).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id })

    #@assignature_homeworks = Homework.joins(:lesson).where(homeworks: {type_off: "homework"}).where("lessons.assignature_id =?",params[:assignature_id] ).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id}).group_by(&:lesson)


    #@assignature_flashcards = Homework.joins(:lesson).where(homeworks: {type_off: "flashcard"}).where("lessons.assignature_id =?",params[:assignature_id] ).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id }).group_by(&:lesson)

  end

  def show
    if UserHomework.where(homework_id: params[:id], student_id: current_user).exists?
      @homework = Homework.find(params[:id])
      @user_homework = UserHomework.where(homework_id: params[:id], student_id: current_user)
      @user_homework = @user_homework[0]
    else
      @user_homework = UserHomework.new
    end
  end

  def update
    # @homework = Homework.find(params[:id])
    # @homework.update(@homework.answer)
  end

  private

  def set_homework
    @homework = Homework.find(params[:id])
  end

  def homework_params
    params.requiere(:homework).permit(:attach, :content, :answer, :type)
  end
end
