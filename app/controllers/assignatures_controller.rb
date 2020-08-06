class AssignaturesController < ApplicationController
  before_action :set_assignature, only: [:show]

  def index
    @assignatures = current_user.assignatures
  end

  def show
    @lessons = Lesson.where(assignature_id: @assignature.id)
    #@homeworks = Homework.where(lesson_id: @lesson.id)
  end

  private

  def set_assignature
    @assignature = Assignature.find(params[:id])
  end

end
