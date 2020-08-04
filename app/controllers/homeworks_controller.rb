class HomeworksController < ApplicationController
  before _action :set_homework, only: %i[show]

  def index
  end

  def show
  end

  private

  def set_homework
    @homework = Homework.find(params[:id])
  end

  def homework_params
    params.requiere(:homework).permit(:attach, :content, :answer, :type)
  end
end
