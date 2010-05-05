require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "email_friend" do
    mail = Notifier.email_friend
    assert_equal "Email friend", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
