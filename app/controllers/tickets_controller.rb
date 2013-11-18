class TicketsController < ApplicationController
  
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def show
  end

  def edit
  end

  def create
    @ticket = Ticket.create(ticket_params)
    redirect_to tickets_path
  end

  def destroy
    Ticket.find(params[:id]).destroy
    redirect_to tickets_path
  end

  private

  def set_place
    @ticket = Ticket.find(ticket_params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:transport, :origin_id, :destiny_id)
  end
end