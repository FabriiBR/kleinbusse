class HomeworksController < ApplicationController
  before_action :set_homework, only: %i[show :update]

  def index
   #@homework_assignatures = Assignature.find(params[:assignature_id]).joins(lessons: :homeworks).where(homeworks: {type_off: "homework"}).distinct
    @assignature_homeworks = Homework.joins(:lesson).where(homeworks: {type_off: "homework"}).where("lessons.assignature_id =?",params[:assignature_id] ).group_by(&:lesson)
    @assignature_flashcards = Homework.joins(:lesson).where(homeworks: {type_off: "flashcard"}).where("lessons.assignature_id =?",params[:assignature_id] ).group_by(&:lesson)
    @assignature = Assignature.find(params[:assignature_id])

  end

  def show
  end

  def update
    @homework.update
  end

  private

  def set_homework
    @homework = Homework.find(params[:id])
  end

  def homework_params
    params.requiere(:homework).permit(:attach, :content, :answer, :type)
  end
end

