class QuestionMailer < ActionMailer::Base
  QUESTION_SUBJECT = 'Someone has asked Colonel Andre Dean a Question'

  def admin_email(question)
    @question = question
    mail(to: ENV['ADMIN_EMAIL'], from: @question.email, subject: QUESTION_SUBJECT)
  end

  def question_email(question)
    @question = question
    mail(to: ENV['EMAIL'], from: @question.email, subject: QUESTION_SUBJECT)
  end
end