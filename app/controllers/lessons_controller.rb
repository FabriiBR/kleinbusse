class LessonsController < ApplicationController

  def index
    @lessons = Lesson.where(assignature_id: params[:assignature_id])
    @assignature = Assignature.find(params[:assignature_id])
  end

  def show

    @lesson = Lesson.find(params[:id])
    @lessons = Lesson.where(assignature_id: @lesson.assignature_id)

    @lesson_homeworks = Homework.where(lesson_id: @lesson.id).where(homeworks: {type_off: "homework"}).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id })
    @lesson_flashcars = Homework.where(lesson_id: @lesson.id).where(homeworks: {type_off: "flashcard"}).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id })
    @user_homeworks = current_user.user_homeworks.needs_action
  end
end
