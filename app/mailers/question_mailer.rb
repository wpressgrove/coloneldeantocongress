class QuestionMailer < ActionMailer::Base
  def question_email(question)
    @question = question
    mail(to: ENV['ADMIN_EMAIL'], from: @question.email, subject: 'Someone has asked Colonel Andre Dean a Question')
    mail(to: ENV['EMAIL'], from: @question.email, subject: 'Someone has asked Colonel Andre Dean a Question')
  end
end