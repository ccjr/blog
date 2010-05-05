require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "email_friend" do
    article = articles(:welcome_to_rails)
    message = Notifier.email_friend(article, 'John Smith', 'dude@example.com')
    
    assert_equal "Interesting Article", message.subject
    assert_equal ["dude@example.com"], message.to
    assert_equal ["from@example.com"], message.from
  end  
end
