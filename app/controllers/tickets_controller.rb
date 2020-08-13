class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all.order(:created_at)
  end

  def myindex
    @tickets = Ticket.where(student_id: current_user.id).order(:created_at)
  end

  def new
    @homework = Homework.find(params[:homework_id])
    @ticket = Ticket.new
  end

  def create
    @homework = Homework.find(params[:homework_id])
    @ticket = Ticket.new(ticket_params)
    @ticket.state = 'Pendiente'
    @ticket.student_id = current_user.id
    @ticket.lesson = @homework.lesson
    if @ticket.save
      redirect_to tickets_path
    else
      render :new
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:description)
  end
end
