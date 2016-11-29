require 'test_helper'

class TicketResponseMailerTest < ActionMailer::TestCase
  test "response" do
    mail = TicketResponseMailer.response
    assert_equal "Response", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
