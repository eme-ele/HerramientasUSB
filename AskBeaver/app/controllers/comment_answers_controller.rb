class CommentAnswersController < ApplicationController
  def index
    @comment_answers = CommentAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comment_answers }
    end
  end

  def create
    @answer = Answer.find(params[:answer_id])
    @question = Question.find(@answer.question_id)
    @comment_answer = @answer.comment_answers.create(params[:comment_answer])
    redirect_to question_path(@question)
  end
  
  def destroy
    @answer = Answer.find(params[:answer_id])
    @question = Question.find(@answer.question_id)
    @comment_answer = @answer.comment_answers.find(params[:id])
    @comment_answer.destroy
    redirect_to question_path(@question)
  end
end
