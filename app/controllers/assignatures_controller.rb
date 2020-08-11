class AssignaturesController < ApplicationController
  before_action :set_assignature, only: [:show]

  def index
    @assignatures = current_user.assignatures
    @user_homeworks_total = current_user.user_homeworks
    @user_homeworks = current_user.user_homeworks.pending
  end

  def show
    @lessons = Lesson.where(assignature_id: @assignature.id)
  end

  private

  def set_assignature
    @assignature = Assignature.find(params[:id])
  end

end
