# Preview all emails at http://localhost:3000/rails/mailers/ticket_response_mailer
class TicketResponseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ticket_response_mailer/response
  def response
    TicketResponseMailer.response
  end

end
