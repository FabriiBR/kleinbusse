class LessonsController < ApplicationController

  def show
    # @assignature = Assignature.find(params[:assignature_id])
    @lesson = Lesson.find(params[:id])
    @lessons = Lesson.where(assignature_id: @lesson.assignature_id)
    @homeworks = Homework.where(lesson_id: @lesson.id)
  end
end
