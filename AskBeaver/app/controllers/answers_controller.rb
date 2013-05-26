class AnswersController < ApplicationController
  def index
    @answers = Answer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(params[:answer])
    redirect_to question_path(@question)
  end
  
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question)
  end
end
