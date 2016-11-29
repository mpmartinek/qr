class TicketsController < ApplicationController
	def index
		@tickets = Ticket.where(:resolved=>false)
	end

	def resolved
		@tickets = Ticket.where(:resolved=>true)
	end
	
	def show
		@ticket = Ticket.find(params[:id])
	end

	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.create(ticket_params)

		respond_to do |format|
			if @ticket.save
				TicketResponseMailer.response(@ticket).deliver_now
				format.html { redirect_to @root_path, notice: 'Ticket was created.' }
				format.json { render :show, status: :created, location: @ticket }
			else
				format.html { render :new }
				format.json { render json: @ticket.errors, status: :unprocessable_entity }
			end
		end		
	end

	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		redirect_to tickets_path
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])
		if @ticket.update(ticket_params)
			redirect_to ticket_path
		end
	end

	private 
	def ticket_params
		params.require(:ticket).permit(:user_id,:contact,:comment,:admin_comment,:image,:resolved)
	end
end
