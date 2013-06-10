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
    @answer = @question.answers.create(params[:answer].except(:user_id))
    @answer.user_id = current_user.id
    @answer.save
    redirect_to question_path(@question)
  end
  
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question)
  end



  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.update_attributes(params[:answer])
    redirect_to question_path(@question)
  end
end