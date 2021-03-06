class QuestionsController < ApplicationController
  QUESTION_ADDED = 'Thank You!! Your question has been submitted!'

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(email_params)
    if @question.save
      QuestionMailer.admin_email(@question).deliver
      QuestionMailer.question_email(@question).deliver
      flash[:notice] = QUESTION_ADDED
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def email_params
    params.require(:question).permit(:name, :email, :phone, :city, :state, :zip, :subject, :description)
  end
end