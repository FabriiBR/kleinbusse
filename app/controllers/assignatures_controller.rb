class AssignaturesController < ApplicationController
  before_action :set_assignature, only: [:show]

  def index
    @assignatures = current_user.assignatures
    @user_homeworks_total = current_user.user_homeworks
    @user_homeworks = current_user.user_homeworks.pending
  end

  def show
    @lessons = Lesson.where(assignature_id: @assignature.id)
    @homeworks_user= Homework.joins(:lesson).where("lessons.assignature_id =?",params[:id] ).includes(:user_homeworks).where(user_homeworks: { student_id: current_user.id, status: [ "pendiente", "corregir"]  })# 200813 GAR Mostrar por usuario

  end

  private

  def set_assignature
    @assignature = Assignature.find(params[:id])
  end

end
