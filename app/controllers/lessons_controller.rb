class LessonsController < ApplicationController

  def show
    # @assignature = Assignature.find(params[:assignature_id])
    @lessons = Lesson.find(params[:id])
  end
end
