class QuestionMailer < ActionMailer::Base
  default from: 'no-reply@coloneldeantocongress.org'

  QUESTION_SUBJECT = 'Someone has asked Colonel Andre Dean a Question'

  def admin_email(question)
    @question = question
    mail(to: ENV['ADMIN_EMAIL'], subject: QUESTION_SUBJECT)
  end

  def question_email(question)
    @question = question
    mail(to: ENV['EMAIL'], subject: QUESTION_SUBJECT)
  end
end