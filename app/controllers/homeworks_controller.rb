class HomeworksController < ApplicationController
  before_action :set_homework, only: %i[show :update]

  def index
    @homework_assignatures = Assignature.joins(lessons: :homeworks).where(homeworks: {type_off: "homework"}).distinct
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

