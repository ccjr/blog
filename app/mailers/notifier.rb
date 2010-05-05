class Notifier < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.actionmailer.notifier.email_friend.subject
  #
  def email_friend
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
