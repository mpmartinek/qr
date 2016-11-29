class TicketResponseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_response_mailer.response.subject
  #
  def response(ticket)
    @ticket = ticket

    mail to: @ticket.contact, subject: "Ticket Response"
  end
end
