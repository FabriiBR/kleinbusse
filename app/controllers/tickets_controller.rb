class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @user = User.find(current_user)
    @ticket = Ticket.new(hw_params)
    @ticket.user = @user
    @ticket.lesson = @lesson
    if @ticket.save
      redirect_to tickets_lesson_path(@lesson)
    else
      render tickets_lesson_path(@lesson)
    end
  end

  private

  def hw_params
    params.require(:ticket).permit(:state, :description)
  end
end
