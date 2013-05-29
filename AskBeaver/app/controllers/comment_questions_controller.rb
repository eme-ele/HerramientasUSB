class CommentQuestionsController < ApplicationController
  def index
    @comment_questions = CommentAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comment_questions }
    end
  end

  def create
    @question = Question.find(params[:question_id])
    @comment_question = @question.comment_questions.create(params[:comment_question])
    redirect_to question_path(@question)
  end
  
  def destroy
    @question = Question.find(params[:question_id])
    @comment_question = @question.comment_questions.find(params[:id])
    @comment_question.destroy
    redirect_to question_path(@question)
  end
end
